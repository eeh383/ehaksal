<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AuthorDetail.aspx.cs" Inherits="Ebook.Web.Admin.AuthorDetail" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

     <br /><br />

<div class="panel panel-primary">

<div class="panel-heading">Yazar Ara</div>

<div class="panel-body">

<table>

<tr>

<td>

<asp:TextBox ID="txtName" runat="server" CssClass="form-control input"

Width="250px" placeholder="Yazar Adı"></asp:TextBox>

</td>

<td>

<asp:TextBox ID="txtSurname" runat="server" CssClass="form-control input"

Width="250px" placeholder="Yazar Soyadı"></asp:TextBox>

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
                    DataNavigateUrlFormatString="AuthorSave.aspx?Id={0}" 
                    Text="Düzenle" />
        <asp:BoundField datafield="Name" headertext="Yazar Adı" />
        <asp:BoundField datafield="Surname" headertext="Yazar Soyadı" />
    </Columns>
</asp:GridView>




</asp:Content>
