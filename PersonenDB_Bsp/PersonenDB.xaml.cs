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
using System.Windows.Shapes;

namespace PersonenDB_Bsp
{
    /// <summary>
    /// Interaction logic for PersonenDB.xaml
    /// </summary>
    public partial class PersonenDB : Window
    {
        public ObservableCollection<Person> PersonenListe { get; set; }

        public PersonenDB()
        {
            InitializeComponent();

            this.PersonenListe = new ObservableCollection<Person>();

            this.DataContext = this;
        }

        private void BtnNeu_Click(object sender, RoutedEventArgs e)
        {
            NeuePerson_Dialog personenDialog = new NeuePerson_Dialog();
            personenDialog.DataContext = new Person();
            if (personenDialog.ShowDialog() == true)
                PersonenListe.Add(personenDialog.DataContext as Person);
        }

        private void BtnÄndern_Click(object sender, RoutedEventArgs e)
        {
            if (dgdPersonen.SelectedValue is Person)
            {
                NeuePerson_Dialog personenDialog = new NeuePerson_Dialog();
                personenDialog.DataContext = new Person(dgdPersonen.SelectedValue as Person);
                if (personenDialog.ShowDialog() == true)
                    PersonenListe[PersonenListe.IndexOf(dgdPersonen.SelectedValue as Person)] = personenDialog.DataContext as Person;
            }
        }

        private void BtnLöschen_Click(object sender, RoutedEventArgs e)
        {
            if (dgdPersonen.SelectedValue is Person)
                if (MessageBox.Show($"Soll {(dgdPersonen.SelectedValue as Person).Vorname} {(dgdPersonen.SelectedValue as Person).Nachname} wirklich gelöscht werden?", "Person löschen?", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                    PersonenListe.Remove(dgdPersonen.SelectedValue as Person);
        }

        private void BtnBeenden_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
