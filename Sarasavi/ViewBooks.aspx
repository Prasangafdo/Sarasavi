<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewBooks.aspx.cs" Inherits="Sarasavi.viewBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtISBN" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" 
        onclick="btnSearch_Click" /><br />

    <asp:GridView ID="dgvBook" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="ISBN" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display.">
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
    <br />
    <asp:TextBox ID="txtBookTitle" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtPublisher" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>

    <asp:Button ID="btnErrorMsg" runat="server" Height="39px" 
        style="font-family: Candara; background-color: #fff; margin-left: 133px;" Text="Failed" 
        Width="284px" />

    <br />
    <asp:TextBox ID="txtEdition" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="btnUpdate" runat="server" Text="Update" 
        onclick="btnUpdate_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" 
        onclick="btnDelete_Click" />

    </asp:Content>
