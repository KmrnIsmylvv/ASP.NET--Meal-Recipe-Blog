using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class MesajDetal : System.Web.UI.Page
    {
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];

            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("Select * from Tbl_Mesajlar where MesajId=@p1", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", id);
            SqlDataReader oxu = emr.ExecuteReader();
            while (oxu.Read())
            {
                txtMesajGonderen.Text = oxu[1].ToString();
                txtBasliq.Text = oxu[2].ToString();
                txtPoctUnvani.Text = oxu[3].ToString();
                txtMezmun.Text = oxu[4].ToString();
            }
            sqlsinifi.baglanti.Close();
        }
    }
}