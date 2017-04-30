<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeFile="PublisherDetail.aspx.cs" EnableEventValidation="false" Inherits="Ebook.Web.Admin.PublisherDetail" %>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">

    <br /><br />

<div class="panel panel-primary">

<div class="panel-heading">Yayınevi Ara</div>

<div class="panel-body">
    <table>

<tr>

<td>

<asp:TextBox ID="txtName" runat="server" CssClass="form-control input"

Width="250px" placeholder="Yayınevi Adı"></asp:TextBox>

</td>



<td>

<asp:Button ID="btnSearch" runat="server" Text="Ara" CssClass="btn btn-default"/>

</td>

</tr>

</table>

</div>

</div>

    <asp:GridView ID="grv" CssClass="table table-striped table-bordered table-hover" runat="server" PageSize="20"
   AllowPaging="true" AutoGenerateColumns="false" >
    <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="Id"
                    DataNavigateUrlFormatString="PublisherSave.aspx?Id={0}" 
                    Text="Düzenle" />
        <asp:BoundField datafield="Name" headertext="Yayınevi" />
       
    </Columns>
</asp:GridView>


</asp:Content>
