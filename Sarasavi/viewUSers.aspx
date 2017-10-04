<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewUSers.aspx.cs" Inherits="Sarasavi.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="USER_number" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="USER_number" HeaderText="USER_number" 
                InsertVisible="False" ReadOnly="True" SortExpression="USER_number" />
            <asp:BoundField DataField="CONTACT_NUMBER" HeaderText="CONTACT_NUMBER" 
                SortExpression="CONTACT_NUMBER" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" 
                SortExpression="USERNAME" />
            <asp:BoundField DataField="USER_TYPE" HeaderText="USER_TYPE" 
                SortExpression="USER_TYPE" />
            <asp:BoundField DataField="USER_ADDRESS" HeaderText="USER_ADDRESS" 
                SortExpression="USER_ADDRESS" />
            <asp:BoundField DataField="NIC_NUMBER" HeaderText="NIC_NUMBER" 
                SortExpression="NIC_NUMBER" />
            <asp:BoundField DataField="SEX" HeaderText="SEX" SortExpression="SEX" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SARASAVI_BOOKSHOPConnectionString %>" 
        SelectCommand="SELECT [USER_number], [CONTACT_NUMBER], [NAME], [USERNAME], [USER_TYPE], [USER_ADDRESS], [NIC_NUMBER], [SEX] FROM [USER_REGISTRATION]">
    </asp:SqlDataSource>
<br />
<br />
<br />
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
