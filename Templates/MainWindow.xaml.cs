using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace Templates
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            this.PersonenListe = new ObservableCollection<Person>();

            PersonenListe.Add(new Person() { Name = "Schmidt", Vorname = "Jürgen", Alter = 89 });
            PersonenListe.Add(new Person() { Name = "Maier", Vorname = "Otto", Alter = 28 });
            PersonenListe.Add(new Person() { Name = "Müller", Vorname = "Maria", Alter = 45 });

            //Setzen des DataContext  auf das Windows (d.h. der DataContext der Xaml-Elemente sind die Properties der Window-Klasse im CodeBehind)
            this.splListBox.DataContext = this;
        }

        public ObservableCollection<Person> PersonenListe { get; set; }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Du hast geklickt");
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            if(lbxPersonen.SelectedItem is Person)
            {
                (lbxPersonen.SelectedItem as Person).Alter++;
            }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            this.PersonenListe.Add(new Person());
        }
    }
}
