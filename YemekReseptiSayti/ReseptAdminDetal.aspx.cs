using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class ReseptAdminDetal : System.Web.UI.Page
    {

        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["ReseptId"];

            if (Page.IsPostBack == false)
            {


                sqlsinifi.baglanti.Open();
                SqlCommand emr = new SqlCommand("select * from Tbl_Reseptler where ReseptId=@p1", sqlsinifi.baglanti);
                emr.Parameters.AddWithValue("@p1", id);
                SqlDataReader oxu = emr.ExecuteReader();
                while (oxu.Read())
                {
                    txtReseptAd.Text = oxu[1].ToString();
                    txtTerkib.Text = oxu[2].ToString();
                    txtHazirlanmasi.Text = oxu[3].ToString();
                    txtTeklifEden.Text = oxu[5].ToString();
                    txtPoctUnvaniniz.Text = oxu[6].ToString();
                }
                sqlsinifi.baglanti.Close();
            }
        }

        protected void btnTesdiqle_Click(object sender, EventArgs e)
        {
            // Hal Guncelleme
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("update Tbl_Reseptler set ReseptHal=1 where ReseptId=@p1", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", id);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
            sqlsinifi.baglanti.Close();

            //Yemeyi Ana Sehifeye Elave Etmek
            sqlsinifi.baglanti.Open();
            SqlCommand emr2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekIngredient,YemekResept) values(@p1,@p2,@p3)", sqlsinifi.baglanti);
            emr2.Parameters.AddWithValue("@p1", txtReseptAd.Text);
            emr2.Parameters.AddWithValue("@p2", txtTerkib.Text);
            emr2.Parameters.AddWithValue("@p3", txtHazirlanmasi.Text);
            emr2.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}