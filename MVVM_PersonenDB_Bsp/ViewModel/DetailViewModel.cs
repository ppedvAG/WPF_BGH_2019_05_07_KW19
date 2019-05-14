using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace MVVM_PersonenDB_Bsp.ViewModel
{
    public class DetailViewModel
    {
        public Model.Person AktuellePerson { get; set; }

        public UserCommand OkCmd { get; set; }

        public DetailViewModel()
        {
            this.OkCmd = new UserCommand
                (
                    p => true,
                    p =>
                    {
                        String ausgabe = AktuellePerson.Vorname + " " + AktuellePerson.Nachname + " (" + AktuellePerson.Geschlecht + ")\nGeboren am " + AktuellePerson.Geburtsdatum.ToLongDateString() + "\n";
                        if (AktuellePerson.Verheiratet) ausgabe += "Verheiratet";
                        else ausgabe += "Nicht Verheiratet";
                        ausgabe += "\nLieblingsfarbe: " + AktuellePerson.Lieblingsfarbe;
                        ausgabe += "\n\nEingaben übernehmen?";

                        if (MessageBox.Show(ausgabe, AktuellePerson.Vorname + " " + AktuellePerson.Nachname, MessageBoxButton.YesNo, MessageBoxImage.Information) == MessageBoxResult.Yes)
                        {
                            (p as View.DetailView).DialogResult = true;
                            (p as View.DetailView).Close();
                        }
                    }
                );
        }
    }
}
