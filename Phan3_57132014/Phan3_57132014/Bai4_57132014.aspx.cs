using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Phan3_57132014
{
    public partial class Bai4_57132014 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLamlai_Click(object sender, EventArgs e)
        {
            txtN.Text = " ";
            txtKQ.Text = " ";
        }

        protected void btnFor_Click(object sender, EventArgs e)
        {
            int n;
            int sum = 0;
            n = int.Parse(txtN.Text);
            for( int i=0; i<=n;i++)
            {
                sum += i;
            }
            txtKQ.Text = sum.ToString();

        }

        protected void btnWhile_Click(object sender, EventArgs e)
        {
            int i = 1;
            int sum = 0;
            int n = int.Parse(txtN.Text);
            while ( i <= n)
            {
                sum += i;
                i++;
            }
            txtKQ.Text = sum.ToString();
        }

        protected void btnDoWhile_Click(object sender, EventArgs e)
        {
            int i = 1;
            int n;
            int sum = 0;
            n = int.Parse(txtN.Text);
            do
            {
                sum += i;
                i++;
            } while (i <= n);
                txtKQ.Text = sum.ToString();
        }
    }
}