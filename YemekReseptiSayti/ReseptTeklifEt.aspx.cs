using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class ReseptTeklifEt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReseptTeklifEt_Click(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("insert into Tbl_Reseptler (ReseptAd,ReseptIngredient,ReseptEdilmesi,ReseptSekil,ReseptSahib,ReseptSahibMail) values(@r1,@r2,@r3,@r4,@r5,@r6)  ", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@r1", txtReseptAd.Text);
            emr.Parameters.AddWithValue("@r2", txtTerkib.Text);
            emr.Parameters.AddWithValue("@r3", txtHazirlanmasi.Text);
            emr.Parameters.AddWithValue("@r4", FileUpload1.FileName);
            emr.Parameters.AddWithValue("@r5", txtReseptiTeklifEden.Text);
            emr.Parameters.AddWithValue("@r6", txtPoctUnvani.Text);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
            Response.Write("Reseptiniz Qəbul Edildi...");
        }
    }
}