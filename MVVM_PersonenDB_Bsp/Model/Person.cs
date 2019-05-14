using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media;

namespace MVVM_PersonenDB_Bsp.Model
{
    public class Person : IDataErrorInfo
    {
        #region Statische Member
        public static ObservableCollection<Person> PersonenListe { get; set; } = new ObservableCollection<Person>();

        public static void LadePersonenAusDB()
        {
            PersonenListe.Add(new Person() { Vorname = "Hugo", Nachname = "Meier", Geburtsdatum = new DateTime(1978, 6, 12), Verheiratet = true, Geschlecht = Gender.Männlich, Lieblingsfarbe = Colors.DarkOrange });
            PersonenListe.Add(new Person() { Vorname = "Anna", Nachname = "Schmidt", Geburtsdatum = new DateTime(1999, 4, 23), Verheiratet = false, Geschlecht = Gender.Weiblich, Lieblingsfarbe = Colors.LightGreen });
            PersonenListe.Add(new Person() { Vorname = "Johann", Nachname = "Müller", Geburtsdatum = new DateTime(2002, 1, 2), Verheiratet = false, Geschlecht = Gender.Divers, Lieblingsfarbe = Colors.Pink });
        } 
        #endregion

        #region Properties

        private string vorname;

        public string Vorname
        {
            get { return vorname; }
            set { vorname = value; }
        }

        private string nachname;

        public string Nachname
        {
            get { return nachname; }
            set { nachname = value; }
        }

        private MVVM_PersonenDB_Bsp.Gender geschlecht;

        public MVVM_PersonenDB_Bsp.Gender Geschlecht
        {
            get { return geschlecht; }
            set { geschlecht = value; }
        }

        private DateTime geburtsdatum;

        public DateTime Geburtsdatum
        {
            get { return geburtsdatum; }
            set { geburtsdatum = value; }
        }

        private Color lieblingsfarbe;

        public Color Lieblingsfarbe
        {
            get { return lieblingsfarbe; }
            set { lieblingsfarbe = value;}
        }

        private bool verheiratet;
        public bool Verheiratet
        {
            get { return verheiratet; }
            set { verheiratet = value; }
        }

        public string Error { get { return ""; } }

        public string this[string columnName]
        {
            get
            {
                switch (columnName)
                {
                    case nameof(Vorname):
                        if (Vorname.Length <= 0 || Vorname.Length > 50) return "Bitte geben Sie ihren Vornamen ein!";
                        if (!Vorname.All(x => char.IsLetter(x))) return "Der Vorname darf nur Buchstaben enthalten!";
                        break;

                    case nameof(Nachname):
                        if (Nachname.Length <= 0 || Vorname.Length > 50) return "Bitte geben Sie ihren Nachnamen ein!";
                        if (!Nachname.All(x => char.IsLetter(x))) return "Der Nachname darf nur Buchstaben enthalten!";
                        break;

                    case nameof(Geburtsdatum):
                        if (Geburtsdatum > DateTime.Now) return "Das Geburtsdatum darf nicht in der Zukunft liegen!";
                        if (DateTime.Now.Year - Geburtsdatum.Year > 150) return "Das Geburtsdatum darf nicht mehr als 150 Jahre in der Vergangenheit liegen!";
                        break;

                    case nameof(Lieblingsfarbe):
                        if (Lieblingsfarbe.ToString().Equals("#00000000")) return "Wähle eine Farbe aus!";
                        break;

                    default:
                        break;
                }
                return "";
            }
        }

        #endregion

        public Person()
        {
            this.Nachname = "";
            this.Vorname = "";
            this.Geburtsdatum = DateTime.Now;
        }

        public Person(Person person)
        {
            this.Vorname = person.Vorname;
            this.Nachname = person.Nachname;
            this.Geschlecht = person.Geschlecht;
            this.Geburtsdatum = new DateTime(person.Geburtsdatum.Year, person.Geburtsdatum.Month, person.Geburtsdatum.Day);
            this.Lieblingsfarbe = person.Lieblingsfarbe;
            this.Verheiratet = person.Verheiratet;
        }
    }
}
