<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="Sarasavi.help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <h1 style="text-align:center; color:#fff">
        Login
        </h1>
        <p style="text-align:center; color:#fff">
           Only Admin (librarian) and studens can login to the system.
        </p>

        <h1 style="text-align:center; color:#fff">
        Member registration
        </h1>
        <p style="text-align:center; color:#fff">
          Students need toi register in the system in order to borrow or reserve a book copy.
        </p>

        <h1 style="text-align:center; color:#fff">
        Book Registration
        </h1>
        <p style="text-align:center; color:#fff">
           All the available books should be registered by the admin.
           Books can have up to 10 copies.
        </p>

        <h1 style="text-align:center; color:#fff">
        Book borrowing & reserving
        </h1>
        <p style="text-align:center; color:#fff">
          Students can either borrow or reserve books.
          Once a book has been borrowed, it will be marked as borrowed or reserved and no longer will be available in the system.
        </p>

        <h1 style="text-align:center; color:#fff">
        Book return
        </h1>
        <p style="text-align:center; color:#fff">
         When the book returned, the book will be available for the students to borrow or reserve.
        </p>

        <h1 style="text-align:center; color:#fff">
        Search & update
        </h1>
        <p style="text-align:center; color:#fff">
           Admin can search for students or books and edit details.
        </p>
</asp:Content>
