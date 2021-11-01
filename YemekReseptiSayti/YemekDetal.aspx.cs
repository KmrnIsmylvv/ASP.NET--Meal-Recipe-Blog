using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class YemekDetal : System.Web.UI.Page
    {
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            yemekid = Request.QueryString["YemekId"];

            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("select YemekAd from Tbl_Yemekler where YemekId=@p1", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader oxu = emr.ExecuteReader();
            while (oxu.Read())
            {
                Label9.Text = oxu[0].ToString();
            }
            sqlsinifi.baglanti.Close();


            //Serhleri Listelemek
            sqlsinifi.baglanti.Open();
            SqlCommand emr2 = new SqlCommand("select * from Tbl_Serhler where Yemekid=@p2", sqlsinifi.baglanti);
            emr2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader oxu2 = emr2.ExecuteReader();
            DataList2.DataSource = oxu2;
            DataList2.DataBind();
            sqlsinifi.baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("insert into Tbl_Serhler (SerhAdSoyad,SerhMail,SerhMezmun,YemekId) values (@p1,@p2,@p3,@p4)", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            emr.Parameters.AddWithValue("@p2", txtMail.Text);
            emr.Parameters.AddWithValue("@p3", txtSerh.Text);
            emr.Parameters.AddWithValue("@p4", yemekid);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}