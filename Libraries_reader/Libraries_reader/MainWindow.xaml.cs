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
using System.Net.Http;
using Newtonsoft.Json;

namespace Libraries_reader
{
    /// <summary>
    /// Interakční logika pro MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Reload_Table();
        }

        static HttpClient client = new HttpClient();

        private void Reload_click(object sender, RoutedEventArgs e)
        {
            Reload_Table();
        }

        private void Create_click(object sender, RoutedEventArgs e)
        {
            Book new_book = new Book();

            try
            {
                new_book.Name = TB_NewData2.Text;
                new_book.Author = TB_NewData3.Text;
                new_book.Translation = TB_NewData4.Text;
                new_book.PublicationDate = Convert.ToInt32(TB_NewData5.Text);
            }
            catch
            {
                MessageBox.Show("Nezadali jste všechny údaje!!", "Error");
            }

            string addres = "https://localhost:44302/api/Books";
            var response = client.PostAsJsonAsync(addres, new_book).Result;

            if (response.IsSuccessStatusCode) Console.Write("Success");
            else Console.Write("Error");

            Reload_Table();
        }

        private void Delete_click(object sender, RoutedEventArgs e)
        {
            var item = (sender as Button).DataContext;
            int index = l_view.Items.IndexOf(item);
            Book b = new Book();
            b=(Book)l_view.Items.GetItemAt(index);
            index = b.ID;


            string addres = "https://localhost:44302/api/Books/";
            addres += index;

            var response = client.DeleteAsync(addres).Result;

            if (response.IsSuccessStatusCode) Console.Write("Success");
            else Console.Write("Error");

            Reload_Table();
        }

        int GetID(int index)
        {
            Book b = new Book();
            b = (Book)l_view.Items.GetItemAt(index);
            index = b.ID;

            return index;
        }

        async void Reload_Table()
        {
            List<Book> books = await GetAPIAsync("https://localhost:44302/api/Books");

            l_view.Items.Clear();

            foreach (Book b in books)
            {
                l_view.Items.Add(b);
            }
        }

        static async Task<List<Book>> GetAPIAsync(string path)
        {
            List<Book> data = null;
            HttpResponseMessage response = await client.GetAsync(path);

            if (response.IsSuccessStatusCode)
            {
                data = JsonConvert.DeserializeObject<List<Book>>(await response.Content.ReadAsStringAsync());
            }
            return data;
        }

        private void OnKeyDownHandler(object sender, KeyEventArgs e)
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
                        new_book.PublicationDate = Convert.ToInt32(new_text);
                        break;
                }

                int index = l_view.Items.IndexOf(item);
                int ID = GetID(index);

                string addres = "https://localhost:44302/api/Books/";
                addres += ID.ToString();

                var response = client.PutAsJsonAsync(addres, new_book).Result;
                if (response.IsSuccessStatusCode) Console.Write("Success");
                else Console.Write("Error");

                Reload_Table();
            }
        }
    }
}
