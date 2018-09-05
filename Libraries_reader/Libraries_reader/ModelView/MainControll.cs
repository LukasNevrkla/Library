using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Libraries_reader.REST;
using Libraries_reader.Model;
using System.Windows.Controls;

namespace Libraries_reader.ModelView
{
    class MainControll
    {
        public static string URL="https://localhost:44302/api/Books";
        public static string ORDER = "ID";
        public static ListView DataListView;

        //Udela GET pozadavek a vysledek vlozi do tabulky//
        public async Task ReloadListView()
        {
            if (MainControll.DataListView != null)
            {
                RestRequests<List<Book>> rest = new RestRequests<List<Book>>();
                //List<Book> books = await rest.GetRequest("https://localhost:44302/api/Books");

                string SQL_qurey = "SELECT * FROM dbo.Books ORDER BY ";
                SQL_qurey += MainControll.ORDER;
                Books.books = await rest.GetRequest(MainControll.URL, SQL_qurey);

                if (Books.books != null)
                {
                    MainControll.DataListView.Items.Clear();

                    foreach (Book b in Books.books)
                    {
                        MainControll.DataListView.Items.Add(b);
                    }
                }
            }
        }
    }
}
