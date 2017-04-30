<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PublisherSave.aspx.cs" EnableEventValidation="false" Inherits="Ebook.Web.Admin.PublisherSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
       <center><h2>Yayınevi Kaydet</h2></center>
     <br />

    <table class="table">

<tr>

<th>Yayınevi</th>

<td> 
    <asp:TextBox ID="txtName" runat="server" CssClass="form-control input" Width="250px" placeholder="Yayınevi Adı"></asp:TextBox>
</td>
<td>
 <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtName" errormessage="*" />
</td>
</tr>

<tr>
<th>Adres</th>
<td> <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control input" Width="250px" placeholder="Adres"></asp:TextBox></td>
</tr>

<tr>
<th>Telefon</th>
<td> <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control input" Width="250px" placeholder="Telefon"></asp:TextBox></td>
</tr>

<tr>       
<td> <asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="btn btn-default" OnClick="btnSave_Click"/></td>
</tr> 

    </table>

</asp:Content>
