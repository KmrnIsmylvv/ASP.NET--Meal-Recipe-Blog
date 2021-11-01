using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace YemekReseptiSayti
{
    public class sqlsinifi
    {
        public static SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-50U56HO;Initial Catalog=Dbo_YemekReseptiSayt;Integrated Security=True");
    }
}