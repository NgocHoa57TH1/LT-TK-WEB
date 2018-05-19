using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai3_57132014 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLamlai_Click(object sender, EventArgs e)
        {
            txtA.Text = " ";
            txtB.Text = " ";
            txtKQ.Text = " ";
        }

        protected void btnGiai_Click(object sender, EventArgs e)
        {
            float a, b, c, d, x, x1, x2;
            a = float.Parse(txtA.Text);
            b = float.Parse(txtB.Text);
            c = float.Parse(txtC.Text);
            d = ((b * b) - (4 * a * c));
            if( a!=0)
            {
                if (d<0)
                {
                    txtKQ.Text = " PT vô nghiệm!!! ";
                }
                if (d == 0)
                {
                    x = -b / 2 * a;
                    txtKQ.Text =" PT có nghiệm kép "+ x.ToString() ;
                }
                if (d > 0)
                {
                    x1 = (-b - (float)Math.Sqrt(d)) / 2 * a;
                    x2 = (-b + (float)Math.Sqrt(d)) / 2 * a;
                    txtKQ.Text = " PT có 2 nghiệm " + x1.ToString() + " và " + x2.ToString();
                }

            }
            else
            {
                if ( b == 0 && c == 0)
                {
                    txtKQ.Text = " PT có vô số nghiệm ";
                }
                if (b == 0 && c != 0)
                {
                    txtKQ.Text = " PT có vô nghiệm ";
                }
                if (b != 0)
                {
                    x = -c / b;
                    txtKQ.Text = x.ToString();
                }
            }
        }
    }
}