using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class HaqqimizdaAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;

            //metnin textbox da gosterilmesi
            if (Page.IsPostBack==false)
            {         
                sqlsinifi.baglanti.Open();
                SqlCommand emr = new SqlCommand("Select * from Tbl_Haqqimizda", sqlsinifi.baglanti);
                SqlDataReader oxu = emr.ExecuteReader();
                while (oxu.Read())
                {
                    txtHaqqimizda.Text = oxu[0].ToString();
                }
                sqlsinifi.baglanti.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("update Tbl_Haqqimizda set Metn=@p1", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtHaqqimizda.Text);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}