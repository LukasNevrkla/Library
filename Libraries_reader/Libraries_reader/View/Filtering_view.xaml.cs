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
using Libraries_reader.ModelView;

namespace Libraries_reader.View
{
    /// <summary>
    /// Interakční logika pro Filtering_view.xaml
    /// </summary>
    public partial class Filtering_view : UserControl
    {
        MainControll control = new MainControll();

        public Filtering_view()
        {
            InitializeComponent();
        }

        private async void OrderChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBoxItem cb = (ComboBoxItem)(sender as ComboBox).SelectedItem;
            String name = cb.Name;
            name = name.Remove(name.Length - 1);
            MainControll.ORDER = name;

            await control.ReloadListView();
        }

        private async void FilterChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBoxItem cb = (ComboBoxItem)(sender as ComboBox).SelectedItem;
            String name = cb.Name;
            name = name.Remove(name.Length - 1);
            MainControll.SEARCH_BY = name;

            await control.ReloadListView();
        }

        private async void Serarch_key_up(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                MainControll.SEARCH = TB_search.Text;

                await control.ReloadListView();
            }
        }
    }
}
