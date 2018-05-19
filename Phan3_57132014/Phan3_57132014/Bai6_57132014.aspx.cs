using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai6_57132014 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLamlai_Click(object sender, EventArgs e)
        {
            txtMa.Text = " ";
            txtHoten.Text = " ";
            txtMon.Text = " ";
            txtTyle.Text = " ";
            txtDiemKT.Text = " ";
            txtThi.Text = " ";
            txtDiemTK.Text = " ";
            txtXL.Text = " ";
            txtIn.Text = " ";
        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            Double ma, tl, ktra, thi, tket;
            String ten, mon;
            ma = Double.Parse(txtMa.Text);
            ten = txtHoten.Text;
            mon = txtMon.Text;
            tl = Double.Parse(txtTyle.Text);
            ktra = Double.Parse(txtDiemKT.Text);
            thi = Double.Parse(txtThi.Text);

            tket = (ktra + thi) / 2;
            txtDiemTK.Text = tket.ToString();
            if (tket < 3.5)
            { txtXL.Text = " Quá yếu "; }
            else if (tket >= 3.5 && tket < 5)
                    { txtXL.Text = " Yếu "; }
                else if (tket >= 5 && tket < 6)
                    { txtXL.Text = " Trung Bình "; }
                     else if (tket >= 6 && tket < 7)
                        { txtXL.Text = "Trung bình khá"; }
                          else if (tket >= 7 && tket < 8)
                                { txtXL.Text = "Khá"; }
                               else if (tket >= 8 && tket < 9)
                                    { txtXL.Text = "Giỏi"; }
                                    else txtXL.Text = "Xuất sắc!!!";
            txtIn.Text = "Mã SV: " + ma.ToString() +
                         "\n Họ tên: " + ten.ToString() +
                         "\n Môn học: " + mon.ToString() +
                         "\n Tỷ lệ kiểm tra: " + tl.ToString() +
                         "\n Điểm kiểm tra: " + ktra.ToString() +
                         "\n Điểm thi: " + thi.ToString() +
                         "\n Điểm tổng kết: " + tket.ToString() +
                         "\n Xếp loại: " + txtXL.Text; 
        }
    }
}