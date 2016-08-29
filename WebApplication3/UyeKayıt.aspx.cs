using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class UyeKayıt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static void btnUyeKayıt_Click(string add,string soyadd,string KullanıcıAdd,string sifree,string sifretekrarr)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
            SqlCommand com = new SqlCommand("insert into KayıtlıUye(ad,soyad,kullanıcıad,sifre) values(@ad,@soyad,@kullanıcıad,@sifre)", con);
            com.Parameters.AddWithValue("ad", add);
            com.Parameters.AddWithValue("soyad",soyadd);
            com.Parameters.AddWithValue("kullanıcıad",KullanıcıAdd);
          
            if (sifree==sifretekrarr)
            {
               com.Parameters.AddWithValue("sifre",sifree);
            }
            else
            {
                return;
            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
                com.ExecuteNonQuery();
               
            }
            con.Close();
            
        }
    }
}