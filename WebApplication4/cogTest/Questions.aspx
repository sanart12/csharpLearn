<%@ Page Title="Questions" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Questions.aspx.cs" Inherits="WebApplication4.cogTest.Questions" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h2><%: Title %></h2>
    </hgroup>  
    
   
    
        
    <h2>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"><%=PassedID%></asp:PlaceHolder>
        </h2><br />
    <h1>
    <asp:Label ID="Label1" runat="server">
        <%=PassedSport%>
    </asp:Label>

        </h1>
</asp:Content>