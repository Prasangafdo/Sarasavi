<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookRegistration.aspx.cs" Inherits="Sarasavi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!--Registration form starts here-->
    <body background="Images/background.jpg">
 <div  class = "bookRegistration">
 <form name="form1">
<fieldset class = "breg">

<legend>Book Registration</legend>

    <asp:Label ID="lblErr" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="ISBN" ForeColor="White"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtISBN" runat="server" Height="30px" Width="373px"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtISBN" ErrorMessage="Please fill this field" 
        Font-Bold="False" ForeColor="White" ViewStateMode="Disabled" 
        style="font-size: small"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Book Title" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtbookTtle" runat="server" Height="30px" Width="368px"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtbookTtle" ErrorMessage="Please fill this field" 
        Font-Bold="False" ForeColor="White" ViewStateMode="Disabled" 
        style="font-size: small"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" Text="Publisher" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtPublisher" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtPublisher" ErrorMessage="Please fill this field" 
        Font-Bold="False" ForeColor="White" ViewStateMode="Disabled" 
        style="font-size: small"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Author" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtAuthor" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="txtAuthor" ErrorMessage="Please fill this field" 
        Font-Bold="False" ForeColor="White" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
    <br />
    <br />

    <asp:Label ID="Label5" runat="server" Text="Edition" ForeColor="White"></asp:Label>
    <br />

    <asp:TextBox ID="txtEdition" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtEdition" ErrorMessage="Please fill this field" 
        Font-Bold="False" ForeColor="White" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Category" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtCategory" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtCategory" ErrorMessage="Please fill this field" 
        Font-Bold="False" ForeColor="White" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
    <br />
    <br />

    <asp:Button ID="Button1" runat="server" BackColor="#663300" Height="57px" 
        Text="Register Book" Width="399px" BorderColor="#000CCC" BorderStyle="Solid" 
        BorderWidth="4px" Font-Bold="True" Font-Size="18px" ForeColor="White"
        onclick="Button1_Click" />
      
       
</fieldset>
</form>
</div>

<!--Footer starts here-->
  		<div class="footer-distributed">

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

</body>
</asp:Content>
