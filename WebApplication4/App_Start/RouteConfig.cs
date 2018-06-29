using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;

namespace WebApplication4
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            //routes.MapPageRoute("blocker", "{*.aspx*}", "~/Default.aspx");
            routes.MapPageRoute("Default", "Home","~/Default.aspx");
            routes.MapPageRoute("Register", "Register","~/cogTest/Register.aspx");
          //  routes.MapPageRoute("QuestionsPageRoute", "Questions", "~/cogTest/Questions.aspx");
            routes.MapPageRoute("QuestionsPageRouteWithID", "Questions/{quizid}", "~/cogTest/Questions.aspx");
//            routes.MapPageRoute("QuestionsPageRoutetest", "Questions{id}", "~/cogTest/Questions.aspx");
            routes.MapPageRoute("TestPageRoute", "Test", "~/cogTest/Test.aspx");
            routes.MapPageRoute("ResultPageRoute", "Success", "~/cogTest/Result.aspx");
            
        }
    }
}