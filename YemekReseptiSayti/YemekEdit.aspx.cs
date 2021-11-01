using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class YemekEdit : System.Web.UI.Page
    {

        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"];
            if (Page.IsPostBack == false)
            {
                sqlsinifi.baglanti.Open();
                SqlCommand emr = new SqlCommand("select * from Tbl_Yemekler where YemekId=@p1", sqlsinifi.baglanti);
                emr.Parameters.AddWithValue("@p1", id);
                SqlDataReader oxu = emr.ExecuteReader();
                while (oxu.Read())
                {
                    txtYemekAd.Text = oxu[1].ToString();
                    txtTerkib.Text = oxu[2].ToString();
                    txtHazirlanmasi.Text = oxu[3].ToString();
                }
                sqlsinifi.baglanti.Close();
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(MapPath("/Sekiller/" + FileUpload1.FileName));

            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekIngredient=@p2,YemekResept=@p3,YemekSekil=@p5 where YemekId=@p4", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            emr.Parameters.AddWithValue("@p2", txtTerkib.Text);
            emr.Parameters.AddWithValue("@p3", txtHazirlanmasi.Text);
            emr.Parameters.AddWithValue("@p5", "~/Sekiller/" + FileUpload1.FileName);
            emr.Parameters.AddWithValue("@p4", id);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }

        protected void txtYemekAd_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnGununYemeyiSec_Click(object sender, EventArgs e)
        {
            //Yemeklerin halini false etmek
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("update Tbl_Yemekler set Hal=0", sqlsinifi.baglanti);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();

            //gunun yemei ucun id ye gore hal-i true elemek
            sqlsinifi.baglanti.Open();
            SqlCommand emr2 = new SqlCommand("update Tbl_Yemekler set Hal=1 where YemekId=@p1", sqlsinifi.baglanti);
            emr2.Parameters.AddWithValue("@p1", id);
            emr2.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}