using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Libraries_reader.Model
{
    static class Books
    {
        public static List<Book> books
        {
            get { return _books; }
            set { _books = value; }
        }

       private static List<Book> _books;
    }
}
