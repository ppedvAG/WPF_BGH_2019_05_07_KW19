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

namespace Commands
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public CloseCommand CloseCmd { get; set; }

        public UserCommand OpenCmd { get; set; }

        public MainWindow()
        {
            InitializeComponent();

            this.CloseCmd = new CloseCommand();

            this.OpenCmd = new UserCommand(parameter => true, parameter => (new MainWindow()).Show());

            this.OpenCmd = new UserCommand
                (
                    delegate (object parameter)
                    {
                        return true;
                    },
                    delegate (object parameter)
                    {
                        MainWindow neu = new MainWindow();
                        neu.Show();
                    }
                );

            this.DataContext = this;
        }
    }
}
