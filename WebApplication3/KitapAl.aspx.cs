
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
using System.Xml;

namespace WebApplication3
{
    public partial class KitapAl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        public static string data=" ";
        [WebMethod]
        public static string Combodol(int aramaturu,string aranankelime)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);
            SqlDataAdapter comkitap = new SqlDataAdapter("select kitap_ad from kitap", con);
            SqlDataAdapter comyazar = new SqlDataAdapter("select yazar_ad from yazar", con);
            DataTable dtkitap = new DataTable("kitaplar");
            DataTable dtyazar = new DataTable("yazarlar");
            comkitap.Fill(dtkitap);
            comyazar.Fill(dtyazar);
            if (aramaturu==1)
            {
                foreach (DataRow item in dtkitap.Rows)
                {
                    if (aranankelime.Equals(item))
                    {
                         data = JsonConvert.SerializeObject(dtkitap, Newtonsoft.Json.Formatting.Indented);
                        //Response.Write("bulundu");
                    }
                    else
                    {
                        data = JsonConvert.SerializeObject(dtkitap, Newtonsoft.Json.Formatting.Indented);
                       // Response.Write("bulunamadı");
                    }
                }
            }
            else
            {
                foreach (DataRow item in dtyazar.Rows)
                {
                    if (aranankelime.Equals(item))
                    {
                        data = JsonConvert.SerializeObject(dtyazar, Newtonsoft.Json.Formatting.Indented);
                        
                        //Response.Write("bulundu");
                    }
                    else
                    {
                        data = JsonConvert.SerializeObject(dtyazar, Newtonsoft.Json.Formatting.Indented);
                        //Response.Write("bulunamadı");
                    }
                }
            }
              return data;  
        }
    

    }

    //[WebMethod]
    //public static string ComboDoldur()
    //{
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnection"].ConnectionString);

    //    SqlDataAdapter da = new SqlDataAdapter("select * from Kitap", con);

    //    DataTable dt = new DataTable();
    //    da.Fill(dt);

    //    string data = JsonConvert.SerializeObject(dt, Newtonsoft.Json.Formatting.Indented);

    //    return data;


    //}
}
