<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookDetail.aspx.cs" Inherits="Ebook.Web.Admin.BookDetail" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <br /><br />

<div class="panel panel-primary">

<div class="panel-heading">Kitap Ara</div>

<div class="panel-body">

<table>

<tr>

<td>

<asp:TextBox ID="txtName" runat="server" CssClass="form-control input"

Width="250px" placeholder="Kitap Adı"></asp:TextBox>

</td>


<td>

<asp:Button ID="btnSearch" runat="server" Text="Ara" CssClass="btn btn-default"/>

</td>

</tr>

</table>

</div>

</div>

<asp:GridView ID="grv"
CssClass="table table-striped table-bordered table-hover"
   runat="server" PageSize="20"
   AllowPaging="true" AutoGenerateColumns="false" >
    <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="Id"
                    DataNavigateUrlFormatString="BookSave.aspx?Id={0}" 
                    Text="Düzenle" />
        <asp:BoundField datafield="Title" headertext="Kitap Adı" />
        <asp:BoundField datafield="AuthorName" headertext="Yazar Adı" />
    </Columns>
</asp:GridView>




</asp:Content>
