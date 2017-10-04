<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReturnBook.aspx.cs" Inherits="Sarasavi.ReturnBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <div  class = "registration">
<fieldset class = "bookFieldset">
<legend>Book returning</legend>
    <asp:Label ID="Label1" runat="server" Text="Return ID" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="373px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Loan ID" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label10" runat="server" Text="Actual return date" ForeColor="White"></asp:Label>
    <br />

    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Date" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Fine" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#232B38" Height="57px" 
        Text="Return the book" Width="399px" BorderColor="#97704F" BorderStyle="Solid" 
        BorderWidth="4px" Font-Bold="True" Font-Size="18px" ForeColor="White" 
        onclick="Button1_Click" />
        </fieldset>
        </div>
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
