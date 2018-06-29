using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4.cogTest
{
    public partial class Questions : System.Web.UI.Page
    {
        private string passedID = null;
        public string PassedID { get { return passedID; } }

        private string passedSport = null;
        public string PassedSport { get { return passedSport; } }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write(Request.Params);
            //Response.Write(Request.QueryString["id"]);
            //Console.WriteLine(HttpContext.Current.Request.RawUrl.ToString());
            Response.Write(HttpContext.Current.Request.RawUrl.ToString());
             
            string[] urlParams = HttpContext.Current.Request.RawUrl.Split('/');
            
            if (urlParams.Length > 1)
            {
                passedID = urlParams[urlParams.Length - 1];
                switch (passedID)
                {
                    case "1":
                        { passedSport = "Cricket"; break; }
                    case "2":
                        { passedSport = "Tennis"; break; }
                    case "3":
                        { passedSport = "Baseball"; break; }
                    default:
                        { passedSport = "not a valid ID...!!!"; break; }
                }
            }
            else
                Response.Write("No values found on ::" + urlParams);
            Response.Write("------------------------------------------------------------");
            Response.Write("PAssedID::"+Request.QueryString["quizid"]);
            passedID =Request.QueryString["quizid"];
            Response.Write(passedID);
        }
    }
}