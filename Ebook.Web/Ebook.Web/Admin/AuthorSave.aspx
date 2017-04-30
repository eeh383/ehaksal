<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="AuthorSave.aspx.cs" Inherits="Ebook.Web.Admin.AuthorSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server"> 
    <br />
       <center><h2>Yazar Kaydet</h2></center>
     <br />
   <br /><br /><br />

<table class="table">

<tr>

<th>Yazar Adı</th>

<td> <asp:TextBox ID="txtName" runat="server" CssClass="form-control input"

Width="250px" placeholder="Yazar Adı"></asp:TextBox></td>

</tr>

<tr>

<th>Yazar Soyadı</th>

<td> <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control input"

Width="250px" placeholder="Yazar Soyadı"></asp:TextBox></td>

</tr>

<tr>

<th>Açıklama</th>

<td> <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control input"

Width="250px" placeholder="Açıklama"></asp:TextBox></td>

</tr>

<tr>

<td></td>

<td> <asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="btn btn-default" OnClick="btnSave_Click"/></td>

</tr>

</table>
</asp:Content>
