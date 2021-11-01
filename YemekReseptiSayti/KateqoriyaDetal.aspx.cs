using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class KateqoriyaDetal : System.Web.UI.Page
    {
        string kateqoriyaid = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kateqoriyaid = Request.QueryString["KateqoriyaId"];
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("select * from Tbl_Yemekler where KateqoriyaId=@p1", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", kateqoriyaid);
            SqlDataReader oxu = emr.ExecuteReader();
            DataList2.DataSource = oxu;
            DataList2.DataBind();
            sqlsinifi.baglanti.Close();
        }
    }
}