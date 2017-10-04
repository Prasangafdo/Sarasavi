<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBeforeLogin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Sarasavi.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>
<div class = "login">
<fieldset>
<legend>Login </legend>
    <asp:Label ID="lblUserNum" runat="server" Text="Usee Number" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtUserNum" runat="server" Height="30px" Width="373px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="btnLogin" runat="server" BackColor="#232B38" Height="57px" 
        Text="Login" Width="399px" BorderColor="#97704F" BorderStyle="Solid" 
        BorderWidth="4px" Font-Bold="True" Font-Size="18px" ForeColor="White" 
        ToolTip="Click to login to the system" />
        </fieldset>
        </div>
        </body>

        <!--Footer starts here-->
  		<div class="footer-distributed12">

			<div class="footer-left">
            <h2><a href="Default.aspx">Sarasavi Library</a> </h2><!--Should add a link to the homepage-->
				

				<p class="footer-links">
					<a href="Default.aspx"">Home</a>
					<a href="About.aspx">About</a>
					<a href="Contact.aspx">Contact</a>

                    <!--Ask miss for the correct linkings....-->
				</p>

				<p class="footer-company-name">Sarasavi Library &copy; 2016</p>
			</div>

			<div class="footer-center">

				<div>
<p><span>102, Negombo Road</span> Katunayake, Sri Lanka</p>
				</div>
<br/>

<p>+94 112 498876</p>


				<div>
                <br/>
<p><a href="mailto:support@sarasavi.com">support@sarasavilibrary.com</a></p>

 <!--Ask miss for the correct linkings....-->
				</div>

			</div>

			<div class="footer-right">

				<p class="footer-company-about">
					<span>About the website</span>
					This is a the online book management system for Sarasavi Library.
                     
			  </p>

				<div class="footer-icons">&nbsp;</div>

			</div>

		</div>
        <!--Footer ends--> 

        </asp:Content>
