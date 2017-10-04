<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BorrowBook.aspx.cs" Inherits="Sarasavi.BorrowBook" %>
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
        $("#<%=txtBorrowDate.ClientID %>").dynDateTime({
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
<script type="text/javascript">
    $(document).ready(function () {
        $("#<%=txtRRDate.ClientID %>").dynDateTime({
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


 <div class = "registration">
<fieldset class = "bookFieldset">
<legend>Borrow Books </legend>

    <asp:Label ID="lblUserNum" runat="server" Text="User Number" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtUserNum" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblISBN" runat="server" Text="ISBN" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="txtISBN" runat="server" Height="30px" Width="368px" 
        ontextchanged="txtISBN_TextChanged"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
    <br />
    <br />
    Copy ISBN<br />
    <br />
    <%--<asp:Label ID="Label4" runat="server" Text="Copy ISBN" ForeColor="White"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="368px"></asp:TextBox>
    <br />
    <br />
--%>
    <asp:DropDownList ID="ddlcopyISBN" runat="server" Height="49px" 
          Width="374px" onselectedindexchanged="ddlcopyISBN_SelectedIndexChanged">
          
          <asp:ListItem Text="1" Value="1"></asp:ListItem>
          <asp:ListItem Text="2" Value="2"></asp:ListItem>
          <asp:ListItem Text="3" Value="3"></asp:ListItem>
          <asp:ListItem Text="4" Value="4"></asp:ListItem>
          <asp:ListItem Text="5" Value="5"></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:Label ID="lblBorrowDate" runat="server" Text="Borrow Date" 
        ForeColor="White"></asp:Label>
    <br />
   <asp:TextBox ID="txtBorrowDate" runat="server" Height="30px" Width="368px"></asp:TextBox>
   
 <img src="Images/calender.png" alt="Calander image" 
        style="width: 30px; height:30px; padding:0px"/><br />
    <br />
    <asp:Label ID="lblRRDate" runat="server" Text="Real return date" ForeColor="White"></asp:Label>
    <br />
   <asp:TextBox ID="txtRRDate" runat="server" Height="30px" Width="368px"></asp:TextBox>
   
 <img src="Images/calender.png" alt="Calander image" 
        style="width: 30px; height:30px; padding:0px"/><br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#232B38" Height="57px" 
        Text="Borrow the book" Width="399px" BorderColor="#97704F" BorderStyle="Solid" 
        BorderWidth="4px" Font-Bold="True" Font-Size="18px" ForeColor="White" 
        onclick="Button1_Click" />
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
