using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class Kateqoriyalar : System.Web.UI.Page
    {

        string id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KateqoriyaId"];
                islem = Request.QueryString["islem"];
            }

            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("Select * from Tbl_Kateqoriyalar", sqlsinifi.baglanti);
            SqlDataReader oxu = emr.ExecuteReader();
            DataList2.DataSource = oxu;
            DataList2.DataBind();
            sqlsinifi.baglanti.Close();

            //Silme islemi
            if (islem == "sil")
            {
                sqlsinifi.baglanti.Open();
                SqlCommand emrsil= new SqlCommand("Delete from Tbl_Kateqoriyalar where KateqoriyaId=@p1", sqlsinifi.baglanti);
                emrsil.Parameters.AddWithValue("@p1", id);
                emrsil.ExecuteNonQuery();
                sqlsinifi.baglanti.Close();
            }

            Panel1.Visible = false;
            Panel4.Visible = false;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void btnElaveEt_Click(object sender, EventArgs e)
        {
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("insert into Tbl_Kateqoriyalar (KateqoriyaAd) values (@p1)", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtKateqoriyaAd.Text);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}