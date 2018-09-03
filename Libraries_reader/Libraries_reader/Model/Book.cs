using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using Libraries_reader.Model;
using Libraries_reader.ModelView;
using Libraries_reader.REST;

namespace Libraries_reader
{
    public class Book : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public int ID { get { return _ID; } set { _ID = value; OnPropertyChanged("ID"); } }
        public string Name { get { return _Name; } set { _Name = value; OnPropertyChanged("Name"); } }
        public string Author { get { return _Author; } set { _Author = value; OnPropertyChanged("Author"); } }
        public string Translation { get { return _Translation; } set { _Translation = value; OnPropertyChanged("Translation"); } }
        public int? PublicationDate { get { return _PublicationDate; } set { _PublicationDate = value; OnPropertyChanged("PublicationDate"); } }

        private int _ID;
        private string _Name;
        private string _Author;
        private string _Translation;
        private int? _PublicationDate;

        protected void OnPropertyChanged(string name)
        {/*
            if (Books.books != null)
            {
                Book b = Books.books.Find(u => u.ID == ID);
            }*/

            PropertyChangedEventHandler handler = PropertyChanged;
            if (handler != null)
            {
                handler(this, new PropertyChangedEventArgs(name));
            }
        }
    }
}
