using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai7_57132014 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void btnXN_Click(object sender, EventArgs e)
        {
            Double ma;
            String ten, ns, gt;
            ma = double.Parse(txtMa.Text);
            ten = txtTen.Text;
            ns = txtNS.Text;

            txtIn.Text = "Mã sinh viên:" + ma.ToString() + "\nHọ tên:" + ten.ToString() + " \nNgày sinh:" + ns.ToString();
            if (rbtnM.Checked == true)

                txtIn.Text += "\nGiới tính:" + rbtnM.Text;

            if (rbtnW.Checked == true)

                txtIn.Text += "\nGiới tính:" + rbtnW.Text;
            txtIn.Text += "\nNgành học:" + tdList1.SelectedValue.ToString() + "\nSở thích:";

            if (c1.Checked == true)
            {
                txtIn.Text += " - " + c1.Text;
            }
            if (c2.Checked == true)
            {
                txtIn.Text += " - " + c2.Text;
            }
            if (c3.Checked == true)
            {
                txtIn.Text += " - " + c3.Text;
            }
            if (c4.Checked == true)
            {
                txtIn.Text += " - " + c4.Text;
            }
        }

        protected void tdList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}