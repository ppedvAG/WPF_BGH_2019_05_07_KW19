﻿#pragma checksum "..\..\MainWindow.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "2158D9FC254FA45AB0685575FC1B880455708F9B"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using EventRouting;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace EventRouting {
    
    
    /// <summary>
    /// MainWindow
    /// </summary>
    public partial class MainWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 9 "..\..\MainWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel Aqua;
        
        #line default
        #line hidden
        
        
        #line 12 "..\..\MainWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel Green;
        
        #line default
        #line hidden
        
        
        #line 15 "..\..\MainWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel Yellow;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\MainWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel Blue;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\MainWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel Red;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\MainWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\MainWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock tblOutput;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/EventRouting;component/mainwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\MainWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.Aqua = ((System.Windows.Controls.StackPanel)(target));
            
            #line 10 "..\..\MainWindow.xaml"
            this.Aqua.PreviewMouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_PreviewMouseDown);
            
            #line default
            #line hidden
            
            #line 11 "..\..\MainWindow.xaml"
            this.Aqua.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_MouseLeftButtonDown);
            
            #line default
            #line hidden
            return;
            case 2:
            this.Green = ((System.Windows.Controls.StackPanel)(target));
            
            #line 13 "..\..\MainWindow.xaml"
            this.Green.PreviewMouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_PreviewMouseDown);
            
            #line default
            #line hidden
            
            #line 14 "..\..\MainWindow.xaml"
            this.Green.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_MouseLeftButtonDown);
            
            #line default
            #line hidden
            return;
            case 3:
            this.Yellow = ((System.Windows.Controls.StackPanel)(target));
            
            #line 16 "..\..\MainWindow.xaml"
            this.Yellow.PreviewMouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_PreviewMouseDown);
            
            #line default
            #line hidden
            
            #line 17 "..\..\MainWindow.xaml"
            this.Yellow.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_MouseLeftButtonDown);
            
            #line default
            #line hidden
            return;
            case 4:
            this.Blue = ((System.Windows.Controls.StackPanel)(target));
            
            #line 19 "..\..\MainWindow.xaml"
            this.Blue.PreviewMouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_PreviewMouseDown);
            
            #line default
            #line hidden
            
            #line 20 "..\..\MainWindow.xaml"
            this.Blue.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_MouseLeftButtonDown);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Red = ((System.Windows.Controls.StackPanel)(target));
            
            #line 22 "..\..\MainWindow.xaml"
            this.Red.PreviewMouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_PreviewMouseDown);
            
            #line default
            #line hidden
            
            #line 23 "..\..\MainWindow.xaml"
            this.Red.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(this.SP_MouseLeftButtonDown);
            
            #line default
            #line hidden
            return;
            case 6:
            this.btn = ((System.Windows.Controls.Button)(target));
            
            #line 25 "..\..\MainWindow.xaml"
            this.btn.Click += new System.Windows.RoutedEventHandler(this.Btn_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.tblOutput = ((System.Windows.Controls.TextBlock)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

