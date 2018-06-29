<%@ Page Title="Test Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebApplication4.cogTest.Test" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    
    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="quizCategory" DataValueField="quizID" DataSourceID="SqlDataSource1"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quizDBConnectionString %>" SelectCommand="SELECT [quizID], [quizCategory] FROM [qCategories] ORDER BY [quizID]"></asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

   </asp:Content>
