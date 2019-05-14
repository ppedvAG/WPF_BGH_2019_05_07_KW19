using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Commands
{
    //Commandklassen müssen das Interface ICommand implementieren
    public class UserCommand : ICommand
    {
        //Eventanmeldung
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        //Delegatedefinition
        public delegate bool CanExecuteDelegate(object parameter);
        public delegate void ExecuteDelegete(object parameter);

        //Variablendeklaration
        CanExecuteDelegate CanExecuteMethod { get; set; }
        ExecuteDelegete ExecuteMethod { get; set; }

        //Konstruktor
        public UserCommand(CanExecuteDelegate can, ExecuteDelegete exe)
        {
            this.CanExecuteMethod = can;
            this.ExecuteMethod = exe;
        }

        //Methoden
        public bool CanExecute(object parameter)
        {
            return this.CanExecuteMethod(parameter);
        }

        public void Execute(object parameter)
        {
            this.ExecuteMethod(parameter);
        }
    }
}
