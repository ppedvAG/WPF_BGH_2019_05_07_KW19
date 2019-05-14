using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace MVVM_PersonenDB_Bsp
{
    public class UserCommand : ICommand
    {
        public event EventHandler CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public delegate bool CanExecuteDelegate(object parameter);
        public delegate void ExecuteDelegete(object parameter);

        CanExecuteDelegate CanExecuteMethod { get; set; }
        ExecuteDelegete ExecuteMethod { get; set; }

        public UserCommand(CanExecuteDelegate can, ExecuteDelegete exe)
        {
            this.CanExecuteMethod = can;
            this.ExecuteMethod = exe;
        }

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
