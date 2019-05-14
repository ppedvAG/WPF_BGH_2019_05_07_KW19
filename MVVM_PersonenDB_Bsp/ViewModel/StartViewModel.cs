using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVM_PersonenDB_Bsp.ViewModel
{
    public class StartViewModel : INotifyPropertyChanged
    {
        public int AnzahlPersonen { get { return Model.Person.PersonenListe.Count; } }

        public UserCommand LadeDBCmd { get; set; }
        public UserCommand ÖffneDBCmd { get; set; }

        public StartViewModel()
        {
            this.LadeDBCmd = new UserCommand
                (
                    parameter => this.AnzahlPersonen == 0,
                    parameter =>
                    {
                        Model.Person.LadePersonenAusDB();
                        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("AnzahlPersonen"));
                    }
                );

            this.ÖffneDBCmd = new UserCommand
                (
                    parameter => this.AnzahlPersonen > 0,
                    parameter =>
                    {
                        View.ListView datanbankFester = new View.ListView();
                        datanbankFester.DataContext = new ViewModel.ListViewModel();

                        datanbankFester.Show();
                        (parameter as View.StartView).Close();
                    }
                );
        }

        public event PropertyChangedEventHandler PropertyChanged;
    }
}
