using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MVVM_PersonenDB_Bsp.ViewModel
{
    public class ListViewModel
    {
        public ObservableCollection<Model.Person> PersonenListe { get { return Model.Person.PersonenListe; } }

        public UserCommand NeuCmd { get; set; }
        public UserCommand ÄndernCmd { get; set; }
        public UserCommand LöschenCmd { get; set; }
        public UserCommand SchließenCmd { get; set; }

        public ListViewModel()
        {
            this.SchließenCmd = new UserCommand
                (
                    p => true,
                    p => Application.Current.Shutdown()
                );

            this.NeuCmd = new UserCommand
                (
                    p => true,
                    p =>
                    {
                        View.DetailView neuePersonDialog = new View.DetailView();
                        neuePersonDialog.DataContext = new ViewModel.DetailViewModel();
                        (neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson = new Model.Person();

                        if (neuePersonDialog.ShowDialog() == true)
                            Model.Person.PersonenListe.Add((neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson);
                    }
                );
            this.ÄndernCmd = new UserCommand
                (
                    p => p is Model.Person,
                    p =>
                    {
                        View.DetailView neuePersonDialog = new View.DetailView();
                        neuePersonDialog.DataContext = new ViewModel.DetailViewModel();
                        (neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson = new Model.Person(p as Model.Person);
                        (neuePersonDialog as View.DetailView).Title = "Ändere " + (p as Model.Person).Vorname + " " + (p as Model.Person).Nachname;

                        if (neuePersonDialog.ShowDialog() == true)
                            Model.Person.PersonenListe[Model.Person.PersonenListe.IndexOf(p as Model.Person)] = (neuePersonDialog.DataContext as ViewModel.DetailViewModel).AktuellePerson;
                    }
                );
            this.LöschenCmd = new UserCommand
                (
                    p => p is Model.Person,
                    p =>
                    {
                        if (MessageBox.Show($"Soll {(p as Model.Person).Vorname} {(p as Model.Person).Nachname} wirklich gelöscht werden?", "Person löschen?", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                            Model.Person.PersonenListe.Remove(p as Model.Person);
                    }
                );
        }
    }
}
