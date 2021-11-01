using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class Istifadeci : System.Web.UI.MasterPage
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("select * from Tbl_Kateqoriyalar", sqlsinifi.baglanti);
            SqlDataReader oxu = emr.ExecuteReader();
            DataList1.DataSource = oxu;
            DataList1.DataBind();
            sqlsinifi.baglanti.Close();
        }

      
    }
}