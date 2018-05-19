using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai011 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            int soA = Convert.ToInt32(txtA.Text);
            int soB = Convert.ToInt32(txtB.Text);
            int kq = soA + soB;
            //đưa kết quả ra txtKetqua
            txtKetqua.Text = kq.ToString();

        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            int soA = Convert.ToInt32(txtA.Text);
            int soB = Convert.ToInt32(txtB.Text);
            int kq = soA - soB;
            //đưa kết quả ra txtKetqua
            txtKetqua.Text = kq.ToString();
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            int soA = Convert.ToInt32(txtA.Text);
            int soB = Convert.ToInt32(txtB.Text);
            int kq = soA * soB;
            //đưa kết quả ra txtKetqua
            txtKetqua.Text = kq.ToString();
        }

        protected void btnChia_Click(object sender, EventArgs e)
        {
            int soA = Convert.ToInt32(txtA.Text);
            int soB = Convert.ToInt32(txtB.Text);
            int kq = soA / soB;
            //đưa kết quả ra txtKetqua
            txtKetqua.Text = kq.ToString();
        }

        protected void btnLamlai_Click(object sender, EventArgs e)
        {
            txtA.Text      = " ";
            txtB.Text      = " ";
            txtKetqua.Text = " ";
        }
    }
}