using System;
using System.Collections.Generic;

namespace Library_Manager.Models
{
    public partial class Books
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Author { get; set; }
        public string Translation { get; set; }
        public int? PublicationDate { get; set; }
    }
}
