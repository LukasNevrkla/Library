using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Libraries_reader.REST;
using Libraries_reader.ModelView;

namespace Libraries_reader.View
{
    /// <summary>
    /// Interakční logika pro DataView.xaml
    /// </summary>
    public partial class DataView : UserControl
    {
        MainControll control = new MainControll();

        public DataView()
        {
            InitializeComponent();

            MainControll.DataListView = book_list_view;
            control.ReloadListView();
        }

        private async void Delete_click(object sender, RoutedEventArgs e)
        {
            //ziskani indexu polozky v listview//
            var item = (sender as Button).DataContext;
            int index = book_list_view.Items.IndexOf(item);

            //Ziskani ID z dat na pozici - index//
            Book b = (Book)book_list_view.Items.GetItemAt(index);
            index = b.ID;

            string addres = MainControll.URL;
            RestRequests<List<Book>> rest = new RestRequests<List<Book>>();
            await rest.DeleteRequest(addres, index);
   
            //Prenacteni listview//
            await control.ReloadListView();
        }

        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        { }

        private async void OnKeyUpHandler(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                String new_text = (sender as TextBox).Text;
                String data_name = (sender as TextBox).Name;

                var item = (sender as TextBox).DataContext;
                Book new_book = (Book)item;

                switch (data_name)
                {
                    case "Name":
                        new_book.Name = new_text;
                        break;
                    case "Author":
                        new_book.Author = new_text;
                        break;
                    case "Translation":
                        new_book.Translation = new_text;
                        break;
                    case "PublicationDate":
                        {
                            try { new_book.PublicationDate = Convert.ToInt32(new_text); }
                            catch
                            {
                                //MessageBox.Show("Nezadali jste číslo!!", "Error");// 
                            }
                        }
                        break;
                }
                
                int index = book_list_view.Items.IndexOf(item);
                Book b = (Book)book_list_view.Items.GetItemAt(index);
                index = b.ID;

                //Book new_book = (Book)book_list_view.SelectedItems[0];


                string addres = MainControll.URL;
                RestRequests<Book> rest = new RestRequests<Book>();

                await rest.PutRequest(addres, new_book.ID, new_book);
                await control.ReloadListView();
            }
        }
    }
}
