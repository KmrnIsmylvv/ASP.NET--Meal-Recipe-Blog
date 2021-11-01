using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class Elaqe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajBasliq,MesajMail,MesajMezmun) values (@p1,@p2,@p3,@p4)", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            emr.Parameters.AddWithValue("@p2", txtMovzu.Text);
            emr.Parameters.AddWithValue("@p3", txtPoctUnvaniniz.Text);
            emr.Parameters.AddWithValue("@p4", txtMesaj.Text);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}