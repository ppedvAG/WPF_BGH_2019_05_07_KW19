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

namespace PersonenDB_Bsp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class NeuePerson_Dialog : Window
    {
        public Person ZuBearbeitendePerson { get; set; }

        public NeuePerson_Dialog()
        {
            InitializeComponent();

            this.ZuBearbeitendePerson = new Person();

            this.DataContext = this.ZuBearbeitendePerson;
        }

        private void BtnOK_Click(object sender, RoutedEventArgs e)
        {
            //string personenBeschreibung = ZuBearbeitendePerson.Vorname + " " + ZuBearbeitendePerson.Nachname + " (" + ZuBearbeitendePerson.Geschlecht + ")\n" + ZuBearbeitendePerson.Geburtsdatum.ToShortDateString() + " " + ZuBearbeitendePerson.Lieblingsfarbe + " " + ZuBearbeitendePerson.Verheiratet;
            //MessageBox.Show(personenBeschreibung, "Neue Person");
            this.DialogResult = true;
            this.Close();
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
