using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class ReseptlerAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel5.Visible = false;
            //Tesdiqlenen teklifler
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("select * from Tbl_Reseptler where ReseptHal=1", sqlsinifi.baglanti);
            SqlDataReader oxu = emr.ExecuteReader();
            DataList2.DataSource = oxu;
            DataList2.DataBind();
            sqlsinifi.baglanti.Close();

            //Tesdiqlenmeyen Teklifler
            sqlsinifi.baglanti.Open();
            SqlCommand emr2 = new SqlCommand("Select * from Tbl_Reseptler where ReseptHal=0", sqlsinifi.baglanti);
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
            Panel5.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel5.Visible = false;
        }
    }
}