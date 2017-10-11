<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewUsers.aspx.cs" Inherits="Sarasavi.viewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div align="center" color:"#fff">
    <asp:TextBox ID="txtUsernumber" runat="server" Height="37px" 
        ToolTip="Enter Book ISBN" Width="133px">Enter user number here</asp:TextBox>
    
        <asp:Button ID="btnSearch" runat="server" Height="40px" Text="Search" 
            Width="95px" onclick="btnSearch_Click" />
    
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="USER_number" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." align="center" 
            ForeColor="White" Height="207px" Width="987px" >
        <Columns>
            <asp:BoundField DataField="USER_number" HeaderText="USER_number" 
                ReadOnly="True" SortExpression="USER_number" />
            <asp:BoundField DataField="CONTACT_NUMBER" HeaderText="CONTACT_NUMBER" 
                SortExpression="CONTACT_NUMBER" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="SEX" HeaderText="SEX" SortExpression="SEX" />
            <asp:BoundField DataField="NIC_NUMBER" HeaderText="NIC_NUMBER" 
                SortExpression="NIC_NUMBER" />
            <asp:BoundField DataField="USER_ADDRESS" HeaderText="USER_ADDRESS" 
                SortExpression="USER_ADDRESS" />
            <asp:BoundField DataField="USER_TYPE" HeaderText="USER_TYPE" 
                SortExpression="USER_TYPE" />
            <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" 
                SortExpression="USERNAME" />
            <asp:BoundField DataField="USER_PASSWORD" HeaderText="USER_PASSWORD" 
                SortExpression="USER_PASSWORD" />
        </Columns>
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SARASAVI_BOOKSHOPConnectionString1 %>" 
        DeleteCommand="DELETE FROM [USER_REGISTRATION] WHERE [USER_number] = @USER_number" 
        InsertCommand="INSERT INTO [USER_REGISTRATION] ([CONTACT_NUMBER], [NAME], [SEX], [NIC_NUMBER], [USER_ADDRESS], [USER_TYPE], [USERNAME], [USER_PASSWORD]) VALUES (@CONTACT_NUMBER, @NAME, @SEX, @NIC_NUMBER, @USER_ADDRESS, @USER_TYPE, @USERNAME, @USER_PASSWORD)" 
        ProviderName="<%$ ConnectionStrings:SARASAVI_BOOKSHOPConnectionString1.ProviderName %>" 
        SelectCommand="SELECT [USER_number], [CONTACT_NUMBER], [NAME], [SEX], [NIC_NUMBER], [USER_ADDRESS], [USER_TYPE], [USERNAME], [USER_PASSWORD] FROM [USER_REGISTRATION]" 
        UpdateCommand="UPDATE [USER_REGISTRATION] SET [CONTACT_NUMBER] = @CONTACT_NUMBER, [NAME] = @NAME, [SEX] = @SEX, [NIC_NUMBER] = @NIC_NUMBER, [USER_ADDRESS] = @USER_ADDRESS, [USER_TYPE] = @USER_TYPE, [USERNAME] = @USERNAME, [USER_PASSWORD] = @USER_PASSWORD WHERE [USER_number] = @USER_number">
        <DeleteParameters>
            <asp:Parameter Name="USER_number" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CONTACT_NUMBER" Type="Int32" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="SEX" Type="String" />
            <asp:Parameter Name="NIC_NUMBER" Type="String" />
            <asp:Parameter Name="USER_ADDRESS" Type="String" />
            <asp:Parameter Name="USER_TYPE" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="USER_PASSWORD" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CONTACT_NUMBER" Type="Int32" />
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="SEX" Type="String" />
            <asp:Parameter Name="NIC_NUMBER" Type="String" />
            <asp:Parameter Name="USER_ADDRESS" Type="String" />
            <asp:Parameter Name="USER_TYPE" Type="String" />
            <asp:Parameter Name="USERNAME" Type="String" />
            <asp:Parameter Name="USER_PASSWORD" Type="String" />
            <asp:Parameter Name="USER_number" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

        <asp:Button ID="btnErrorMsg" runat="server" Height="39px" 
        style="font-family: Candara; background-color: #fff; margin-left: 133px;" Text="Failed" 
        Width="284px" />

    <br />
    <br />
    <asp:TextBox ID="txtContactnumber" runat="server" Height="35px" Width="147px">Contact Number</asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtName" runat="server" Height="34px" Width="147px">Name</asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtGender" runat="server" Height="30px" Width="143px">Gender</asp:TextBox>

    <br />

    <br />
    <asp:TextBox ID="txtNIC" runat="server" Height="33px" Width="143px">NIC</asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAddress" runat="server" Height="34px" Width="151px">Address</asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtUserType" runat="server" Height="34px" Width="151px">User Type</asp:TextBox>
        <br />
    <br />
     <asp:TextBox ID="txtUsername" runat="server" Height="34px" Width="151px">Username</asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" Height="34px" Width="151px">Password</asp:TextBox>
    <br />
    <br />
    <p style="text-align:center">
    <asp:Button ID="btnUpdate" runat="server" Text="Update" 
        onclick="btnUpdate_Click" BackColor="#58D662" Height="53px" 
            style="margin-left: 0px" Width="109px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
        onclick="btnDelete_Click" BackColor="#EE2906" Height="50px" Width="124px" />
        </p>
        </div>
    </div>

</asp:Content>
