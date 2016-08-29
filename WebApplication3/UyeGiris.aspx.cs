using Newtonsoft.Json;
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
    public partial class UyeGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static void btnUyeGiris_Click(string Kadı,string Sifresi)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select id,kullanıcıad,sifre from KayıtlıUye where kullanıcıad=@kadı and sifre=@sifresi", con);
            da.SelectCommand.Parameters.AddWithValue("kadı", Kadı);
            da.SelectCommand.Parameters.AddWithValue("sifresi", Sifresi);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count!= 0)
            {
                foreach (DataRow item in dt.Rows)
                {
                    //Session["uyeID"] = item[0].ToString();
                   
                }
                //Response.Redirect("profil.aspx");
            }
            else
            {
                //Response.Write("Kullanıcı Bulunamadı");
            }

        }
       
    }
}