﻿using System;
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
using System.Windows.Shapes;

namespace HR_PresentationLayer
{
    /// <summary>
    /// Interaction logic for MainWindow2.xaml
    /// </summary>
    public partial class MainWindow2 : Window
    {
        public MainWindow2()
        {
            InitializeComponent();

        }
        private void ButtonOpenMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Visible;
            ButtonOpenMenu.Visibility = Visibility.Collapsed;
        }

        private void ButtonCloseMenu_Click(object sender, RoutedEventArgs e)
        {
            ButtonCloseMenu.Visibility = Visibility.Collapsed;
            ButtonOpenMenu.Visibility = Visibility.Visible;

        }

        private void ListViewMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UserControl usc = null;
            GridMain.Children.Clear();



            switch (((ListViewItem)((ListView)sender).SelectedItem).Name)
            {
                case "ItemHome":
                    usc = new HomeControl();
                    GridMain.Children.Add(usc);
                    break;
                case "ManageEmployee":
                    usc = new EmployeeControl();
                    GridMain.Children.Add(usc);
                    break;
                case "ManageProjects":
                    usc = new ProjectControl();
                    GridMain.Children.Add(usc);
                    break;
                case "ManageSkills":
                    usc = new SkillsControl();
                    GridMain.Children.Add(usc);
                    break;
                case "ManageCategories":
                    usc = new CategoriesControl();
                    GridMain.Children.Add(usc);
                    break;
                
                default:
                    break;
            }
        }

        

        private void btnLogOut_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Logged Out Successfully");
            Main main = new Main();
            main.Show();
            this.Close();
        }
        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void btnSwitchUser_Click(object sender, RoutedEventArgs e)
        {
            Main main = new Main();
            main.Show();
            this.Close();

        }
    }
}
