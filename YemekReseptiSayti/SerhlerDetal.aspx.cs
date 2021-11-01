using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class SerhlerDetal : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["SerhId"];

            if (Page.IsPostBack == false)
            {
                sqlsinifi.baglanti.Open();
                SqlCommand emr = new SqlCommand("Select SerhAdSoyad,SerhMail,SerhMezmun,YemekAd from Tbl_Serhler inner join Tbl_Yemekler on Tbl_Serhler.YemekId=Tbl_Yemekler.YemekId where SerhId=@p1", sqlsinifi.baglanti);
                emr.Parameters.AddWithValue("@p1", id);
                SqlDataReader oxu = emr.ExecuteReader();
                while (oxu.Read())
                {
                    txtAdSoyad.Text = oxu[0].ToString();
                    txtPoctUnvani.Text = oxu[1].ToString();
                    txtMezmun.Text = oxu[2].ToString();
                    txtYemek.Text = oxu[3].ToString();
                }
                sqlsinifi.baglanti.Close();
            }
        }

        protected void btnTesdiqle_Click(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("Update Tbl_Serhler set SerhMezmun=@p1,SerhTesdiq=@p2 where SerhId=@p3", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtMezmun.Text);
            emr.Parameters.AddWithValue("@p2", "True");
            emr.Parameters.AddWithValue("@p3", id);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}