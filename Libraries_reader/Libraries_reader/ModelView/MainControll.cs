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

        //Udela GET pozadavek a vysledek vlozi do tabulky//
        public async Task ReloadListView(ListView _list_view)
        {
            RestRequests<List<Book>> rest = new RestRequests<List<Book>>();
            //List<Book> books = await rest.GetRequest("https://localhost:44302/api/Books");
            Books.books = await rest.GetRequest(URL, ORDER);

            _list_view.Items.Clear();

            foreach (Book b in Books.books)
            {
                _list_view.Items.Add(b);
            }
        }
    }
}
