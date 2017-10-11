<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewBooks.aspx.cs" Inherits="Sarasavi.viewBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
&nbsp;&nbsp;&nbsp;
<div align="center">
    <asp:TextBox ID="txtISBN" runat="server" Height="37px" 
        ToolTip="Enter Book ISBN" Width="133px">Book ISBN here</asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSearch" runat="server" Text="Search" 
        onclick="btnSearch_Click" Height="41px" Width="94px" />
    <br />
    <br />
 
    <asp:GridView ID="dgvBook" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ISBN" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." Height="189px" 
        Width="596px" style="text-align:center; color:#fff" align="center">
        <Columns>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" 
                SortExpression="ISBN" />
            <asp:BoundField DataField="BOOK_TITLE" HeaderText="BOOK_TITLE" 
                SortExpression="BOOK_TITLE" />
            <asp:BoundField DataField="PUBLISHER" HeaderText="PUBLISHER" 
                SortExpression="PUBLISHER" />
            <asp:BoundField DataField="AUTHOR" HeaderText="AUTHOR" 
                SortExpression="AUTHOR" />
            <asp:BoundField DataField="EDITION" HeaderText="EDITION" 
                SortExpression="EDITION" />
            <asp:BoundField DataField="CATEGORY" HeaderText="CATEGORY" 
                SortExpression="CATEGORY" />
        </Columns>
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SARASAVI_BOOKSHOPConnectionString1 %>" 
    DeleteCommand="DELETE FROM [BOOK] WHERE [ISBN] = @ISBN" 
    InsertCommand="INSERT INTO [BOOK] ([ISBN], [BOOK_TITLE], [PUBLISHER], [AUTHOR], [EDITION], [CATEGORY]) VALUES (@ISBN, @BOOK_TITLE, @PUBLISHER, @AUTHOR, @EDITION, @CATEGORY)" 
    ProviderName="<%$ ConnectionStrings:SARASAVI_BOOKSHOPConnectionString1.ProviderName %>" 
    SelectCommand="SELECT [ISBN], [BOOK_TITLE], [PUBLISHER], [AUTHOR], [EDITION], [CATEGORY] FROM [BOOK]" 
    UpdateCommand="UPDATE [BOOK] SET [BOOK_TITLE] = @BOOK_TITLE, [PUBLISHER] = @PUBLISHER, [AUTHOR] = @AUTHOR, [EDITION] = @EDITION, [CATEGORY] = @CATEGORY WHERE [ISBN] = @ISBN">
    <DeleteParameters>
        <asp:Parameter Name="ISBN" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ISBN" Type="Int32" />
        <asp:Parameter Name="BOOK_TITLE" Type="String" />
        <asp:Parameter Name="PUBLISHER" Type="String" />
        <asp:Parameter Name="AUTHOR" Type="String" />
        <asp:Parameter Name="EDITION" Type="String" />
        <asp:Parameter Name="CATEGORY" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="BOOK_TITLE" Type="String" />
        <asp:Parameter Name="PUBLISHER" Type="String" />
        <asp:Parameter Name="AUTHOR" Type="String" />
        <asp:Parameter Name="EDITION" Type="String" />
        <asp:Parameter Name="CATEGORY" Type="String" />
        <asp:Parameter Name="ISBN" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

    <br />

    <asp:Button ID="btnErrorMsg" runat="server" Height="39px" 
        style="font-family: Candara; background-color: #fff; margin-left: 133px;" Text="Failed" 
        Width="284px" />

    <br />
    <br />
    <asp:TextBox ID="txtBookTitle" runat="server" Height="35px" Width="147px">Book Title</asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPublisher" runat="server" Height="34px" Width="147px">Publisher</asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtAuthor" runat="server" Height="30px" Width="143px">Author</asp:TextBox>

    <br />

    <br />
    <asp:TextBox ID="txtEdition" runat="server" Height="33px" Width="143px">Edition</asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtCategory" runat="server" Height="34px" Width="151px">Category</asp:TextBox>
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
    </asp:Content>
