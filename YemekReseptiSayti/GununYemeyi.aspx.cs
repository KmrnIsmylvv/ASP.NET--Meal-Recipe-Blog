using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class GununYemeyi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("select * from Tbl_Yemekler where Hal=1", sqlsinifi.baglanti);
            SqlDataReader oxu = emr.ExecuteReader();
            DataList2.DataSource = oxu;
            DataList2.DataBind();
            sqlsinifi.baglanti.Close();
        }

     
    }
}