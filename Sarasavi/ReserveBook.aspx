<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReserveBook.aspx.cs" Inherits="Sarasavi.ReserveBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  <%--Date time picker--%>
<link href="Styles/calendar-blue.css" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="Scripts/jquery.dynDateTime.min.js" type="text/javascript"></script>
<script src="Scripts/calendar-en.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=txt_Date.ClientID %>").dynDateTime({//Displaying date in txt_Date
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%m",
            daFormat: "%l;%M %p, %e %m,  %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
</script>
    <%--
</asp:Content>--%><%--<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">--%>


 <div  class = "registration">
<fieldset class = "bookFieldset">
<legend>Book Reservation</legend>
    <asp:Label ID="Label1" runat="server" Text="User Number" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txt_userNumber" runat="server" Height="30px" Width="373px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Copy ISBN" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txt_copyISBN" runat="server" Height="30px" Width="368px"></asp:TextBox>

    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Date" ForeColor="White"></asp:Label>
    <br />
    <img src="Images/calender.png" alt="Calander image" 
        style="width: 30px; height:30px; padding:0px"/>

    <asp:TextBox ID="txt_Date" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <br />
    <br />
    <br />

        <asp:Button ID="btn_reserve" runat="server" BackColor="#008200" Height="57px" 
            Text="Reserve" Width="399px" BorderColor="Lime" BorderStyle="Solid" 
            BorderWidth="4px" Font-Bold="True" Font-Size="18px" ForeColor="White" 
        onclick="Button1_Click" />

        <asp:Button ID="btn_cancel_reserve" runat="server" BackColor="#B00000" Height="57px" 
        Text="Cancel Reservation" Width="399px" BorderColor="#FF3300" BorderStyle="Solid" 
        BorderWidth="4px" Font-Bold="True" Font-Size="18px" ForeColor="White" />
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
