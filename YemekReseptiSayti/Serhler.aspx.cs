using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class Serhler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel4.Visible = false;

            //Tesdiqlenen Serhler
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("select * from Tbl_Serhler where SerhTesdiq=1 ", sqlsinifi.baglanti);
            SqlDataReader oxu = emr.ExecuteReader();
            DataList2.DataSource = oxu;
            DataList2.DataBind();
            sqlsinifi.baglanti.Close();

            //Tesdiqlenmeyen Serhler
            sqlsinifi.baglanti.Open();
            SqlCommand emr2 = new SqlCommand("Select * from Tbl_Serhler where SerhTesdiq=0", sqlsinifi.baglanti);
            SqlDataReader oxu2 = emr2.ExecuteReader();
            DataList3.DataSource = oxu2;
            DataList3.DataBind();
            sqlsinifi.baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false; 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}