using Quanlitiembanh.View;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Quanlitiembanh.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        public bool Isloaded = false;
        public ICommand LoadedWindowCommand { get; set; }

        public ICommand BillWindow { get; set; }

        public ICommand VoucherWindow { get; set; }

        public ICommand BakeryWindow { get; set; }

  

        // mọi thứ xử lý sẽ nằm trong này
        public MainViewModel()
        {
            

            BillWindow = new RelayCommand<object>((p) => { return true; }, (p) => {
                BillWindow bw = new BillWindow();
                bw.ShowDialog();
            }
               );
            VoucherWindow = new RelayCommand<object>((p) => { return true; }, (p) => {
                VoucherWindow bm = new VoucherWindow();
                bm.ShowDialog();
            }
                );

            BakeryWindow = new RelayCommand<object>((p) => { return true; }, (p) => {
                BakeryWindow vc = new BakeryWindow();
                vc.ShowDialog();
            }
                );

        }
    }
}
