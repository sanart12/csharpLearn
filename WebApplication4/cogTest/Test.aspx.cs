using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication4;

namespace WebApplication4.cogTest
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int qID = Convert.ToInt32(DropDownList1.SelectedValue);
            //In the RedirectToRoute the parameter name should match with the "NAME" which used in RouteConfig "Questions/{id}"
            Response.RedirectToRoute("QuestionsPageRouteWithID", new { quizid = qID.ToString()});
           // Response.Redirect(string.Format("~/cogTest/Questions.aspx/{0}", qID));

        }
    }
}