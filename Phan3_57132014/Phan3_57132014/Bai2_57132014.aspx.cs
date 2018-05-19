using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai2_57132014 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLamlai_Click(object sender, EventArgs e)
        {
            txtA.Text = " ";
            txtB.Text = " ";
            txtKetqua.Text = " ";
        }
       
        protected void btnGiai_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txtA.Text);
            double b = double.Parse(txtB.Text);
            double kq;
            if (a == 0)
                kq = -b;
            else
                kq = -b / a;
            txtKetqua.Text = kq.ToString();


        }
    }
}