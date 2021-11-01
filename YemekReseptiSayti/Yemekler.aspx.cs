using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public partial class Yemekler : System.Web.UI.Page
    {

        string islem = "";
        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Yemek Listi
            sqlsinifi.baglanti.Open();
            SqlCommand emr = new SqlCommand("select * from Tbl_Yemekler", sqlsinifi.baglanti);
            SqlDataReader oxu = emr.ExecuteReader();
            DataList2.DataSource = oxu;
            DataList2.DataBind();
            sqlsinifi.baglanti.Close();

            Panel1.Visible = false;
            Panel4.Visible = false;


            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];
            }
            //if(Page.IsPostBack==false)
            //{
            //    kateqoriya listi
            //    sqlsinifi.baglanti.Open();
            //    SqlCommand emr2 = new SqlCommand("select * from Tbl_Kateqoriyalar");
            //    SqlDataReader oxu2 = emr2.ExecuteReader();

            //    ddlKateqoriya.DataTextField = "KateqoriyaAd";
            //    ddlKateqoriya.DataValueField = "KateqoriyaId";

            //    ddlKateqoriya.DataSource = oxu2;
            //    ddlKateqoriya.DataBind();
            //    sqlsinifi.baglanti.Close();
            //}

            if (islem == "sil")
            {
                sqlsinifi.baglanti.Open();
                SqlCommand emr2 = new SqlCommand("delete from Tbl_Yemekler where YemekId=@p1", sqlsinifi.baglanti);
                emr2.Parameters.AddWithValue("@p1", id);
                emr2.ExecuteNonQuery();
                sqlsinifi.baglanti.Close();
            }

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
            SqlCommand emr = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekIngredient,YemekResept) values (@p1,@p2,@p3)", sqlsinifi.baglanti);
            emr.Parameters.AddWithValue("@p1", txtYemekAd.Text);
            emr.Parameters.AddWithValue("@p2", txtYemekTerkib.Text);
            emr.Parameters.AddWithValue("@p3", txtHazirlanmasi.Text);
            emr.ExecuteNonQuery();
            sqlsinifi.baglanti.Close();
        }
    }
}