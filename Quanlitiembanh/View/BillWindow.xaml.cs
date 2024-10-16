using Quanlitiembanh.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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

namespace Quanlitiembanh.View
{
    /// <summary>
    /// Interaction logic for BillWindow.xaml
    /// </summary>
    public partial class BillWindow : Window
    {
        SqlConnection cn = new SqlConnection("Data Source=DESKTOP-13UCEGF\\SQLEXPRESS;Initial Catalog=Quanlitiembanhmi;Integrated Security=True");
        QuanlitiembanhDataContext dl = new QuanlitiembanhDataContext();

        public BillWindow()
        {
            InitializeComponent();
        }

        private void Them_Bill(object sender, RoutedEventArgs e)
        {
            BillView billView = new BillView();
            billView.Show();
            this.Close();
        }

        private void load_data()
        {
            dataHoadon.ItemsSource = dl.laytatcahoadon();
        }

        private void formBillWindow_Loaded(object sender, RoutedEventArgs e)
        {
            load_data();
        }

        private void btnXoa_Click(object sender, RoutedEventArgs e)
        {
            dl.xoahoadon(Convert.ToInt32(txtId.Text));
            load_data() ;
        }
    }
}
