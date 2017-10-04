<%--<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Sarasavi._Default" %>--%>

    <%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Sarasavi._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">



   
         <asp:Image ID="homeBanner" runat="server" 
            ImageUrl="~/Images/home.png" Width="100%" />
 

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
