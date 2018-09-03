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
//using Libraries_reader.Model;



namespace Libraries_reader
{
    /// <summary>
    /// Interakční logika pro MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {     
        MainControll control = new MainControll();


        public MainWindow()
        {
            InitializeComponent();

            control.ReloadListView(DataViewControl.BookListView);
        }

        
        public async void Reload_click(object sender, RoutedEventArgs e)
        {   
            await control.ReloadListView(DataViewControl.BookListView);
        }

        private async void Create_click(object sender, RoutedEventArgs e)
        {
            Book new_book = new Book();

            new_book.Name = TB_NewData2.Text;
            new_book.Author = TB_NewData3.Text;
            new_book.Translation = TB_NewData4.Text;

            try { new_book.PublicationDate = Convert.ToInt32(TB_NewData5.Text); }   
            catch
            {
                //MessageBox.Show("Nezadali jste číslo!!", "Error");// 
            }

            string addres = "https://localhost:44302/api/Books";

            RestRequests<Book> rest = new RestRequests<Book>();
            await rest.PostRequest(addres, new_book);
            await control.ReloadListView(DataViewControl.BookListView);
        }
    }
}
