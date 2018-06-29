<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication4.cogTest.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Use the form below to create a new account.</h2>
    </hgroup>

                <div>
                    <p class="message-info">
                        Passwords are required to be a minimum of <%: Membership.MinRequiredPasswordLength %> characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>
                    <fieldset class="col-md-12">
                    <ol>
                        <li>
                    <asp:Label ID="Label1" CssClass="col-md-4" runat="server" Text="FirstName" AssociatedControlID="fName"></asp:Label>
                    <asp:TextBox ID="fName" CssClass="col-md-4" runat="server" placeholder="Sankar" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="field-validation-error" runat="server" ControlToValidate="fName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </li>
                        <li>
                    <asp:Label ID="Label2" runat="server" Text="LastName" CssClass="col-md-4" AssociatedControlID="lName"></asp:Label>
                    <asp:TextBox ID="lName" runat="server" placeholder="T" CssClass="col-md-4" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="field-validation-error" runat="server" ControlToValidate="lName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </li>
                        <li>
                    <asp:Label ID="Label3" runat="server"  Text="Email" AssociatedControlID="email" CssClass="col-md-4"></asp:Label>
                    <asp:TextBox ID="email" runat="server" placeholder="Email Address" CssClass="col-md-4" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="field-validation-error" runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </li>
                        <li>
                    <asp:Label ID="Label4" runat="server" Text="Address" AssociatedControlID="addr" CssClass="col-md-4"></asp:Label>
                    <asp:TextBox ID="addr" runat="server" TextMode="MultiLine"  CssClass="col-md-4" placeholder="Your Address" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="field-validation-error"  runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </li>
                        <li>
                    <asp:Label ID="Label5" runat="server" Text="Phone Number" AssociatedControlID="phoneNum" CssClass="col-md-4"></asp:Label>
                    <asp:TextBox ID="phoneNum" runat="server" placeholder="Phone Number" CssClass="col-md-4"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="field-validation-error" runat="server" ControlToValidate="phoneNum" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="field-validation-error" runat="server" ValidationExpression="^[7-9]{1}[0-9]{9}$" ControlToValidate="phoneNum" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                            </li>
                        <li>
                       <asp:Button ID="Button1" runat="server" Text="Register" CssClass="col-md-4"/>
                            </li>
                        </ol>
                        </fieldset>
            </div>
                    
</asp:Content>