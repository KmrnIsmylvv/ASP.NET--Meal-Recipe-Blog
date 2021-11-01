using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class KateqoriyaAdminDetal : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KateqoriyaId"];
            if (Page.IsPostBack == false)
            { 
                sqlsinifi.baglanti.Open();
                SqlCommand emr = new SqlCommand("select * from Tbl_Kateqoriyalar where KateqoriyaId=@p1", sqlsinifi.baglanti);
                emr.Parameters.AddWithValue("@p1", id);
                SqlDataReader oxu = emr.ExecuteReader();
                while (oxu.Read())
                {
                    txtKateqoriyaAd.Text = oxu[1].ToString();
                    txtKateqoriyaSayi.Text = oxu[2].ToString();
                }
                sqlsinifi.baglanti.Close();
            }
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("update Tbl_Kateqoriyalar set KateqoriyaAd=@p1,KateqoriyaEded=@p2 where KateqoriyaId=@p3", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtKateqoriyaAd.Text);
            emr.Parameters.AddWithValue("@p2", txtKateqoriyaSayi.Text);
            emr.Parameters.AddWithValue("@p3", id);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}