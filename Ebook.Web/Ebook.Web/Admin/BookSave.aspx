  <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="BookSave.aspx.cs" EnableEventValidation="false" Inherits="Ebook.Web.Admin.BookSave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
       <center><h2>Kitap Kaydet</h2></center>
     <br />
<table class="table">

<tr>

<th>Kitap Adı</th>

<td> <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control input"

Width="250px" placeholder="Kitap Adı"></asp:TextBox></td>
<td>
 <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtTitle" errormessage="*" />
</td>

</tr>

<tr>

<th>Yazar</th>

<td>  <asp:DropDownList ID="ddlAuthor" runat="server" Height="34px"  Width="272px" >
      </asp:DropDownList>

</td>
    <td>
 <asp:RequiredFieldValidator runat="server" id="rvAuthor" InitialValue="0" controltovalidate="ddlAuthor" errormessage="*" />
</td>

</tr>


<tr>

<th>ISBN</th>

<td> <asp:TextBox ID="txtIsbn" runat="server" CssClass="form-control input"

Width="250px" placeholder="ISBN"></asp:TextBox></td>
<td>
 <asp:RequiredFieldValidator runat="server" id="rqvIsbn" controltovalidate="txtIsbn" errormessage="*" />
</td>
</tr>

<tr>

<th>Yayın Tarihi</th>

<td> 
   
    <asp:Calendar ID="clDate" runat="server"></asp:Calendar>
</td>
    <td></td>
</tr>
    
 <tr>

<th>Sayfa Sayısı</th>

<td> <asp:TextBox ID="txtNumberOfPages" runat="server" CssClass="form-control input" Width="250px" placeholder="Sayfa Sayısı" MaxLength="4"  onkeypress="return onlyNumbers(event)"></asp:TextBox></td>
<td>
 <asp:RequiredFieldValidator runat="server" id="rfvnop" controltovalidate="txtNumberOfPages" errormessage="*" />
</td>
</tr>

<tr>

<th>Baskı Sayısı</th>

<td> <asp:TextBox ID="txtEdition" runat="server" CssClass="form-control input"

Width="250px" placeholder="Kaçıncı baskı"  onkeypress="return onlyNumbers(event)"></asp:TextBox></td>
<td>
 <asp:RequiredFieldValidator runat="server" id="rqfEdition" controltovalidate="txtEdition" errormessage="*" />
</td>
</tr>
<tr>
    <th>Yayınevi</th>

    <td> 
    <asp:DropDownList ID="ddlPublisher" runat="server" Height="34px"  Width="272px">
        <asp:ListItem Value="0">Seçiniz</asp:ListItem>
    </asp:DropDownList></td>
            <td>
 <asp:RequiredFieldValidator runat="server" id="rfvddlPublisher" InitialValue="0" controltovalidate="ddlPublisher" errormessage="*" />

    </td>

</tr>

<tr>

<th>Açıklama</th>

<td> <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control input"

Width="250px" placeholder="Açıklama"></asp:TextBox></td>
<td></td>
</tr>

<tr>

<th>İçerik</th>

<td> 
    <asp:DropDownList ID="ddlContent" runat="server" >
        <asp:ListItem Value="0">Seçiniz</asp:ListItem>
    </asp:DropDownList>
</td>
        <td>
 <asp:RequiredFieldValidator runat="server" id="rqvddlContent" InitialValue="0" controltovalidate="ddlContent" errormessage="*" />

    </td>

</tr>

    <tr>

<th>İçerik</th>

<td> 
    <asp:DropDownList ID="ddlFormat" runat="server" >
        <asp:ListItem Value="0">Seçiniz</asp:ListItem>
    </asp:DropDownList>
</td>
               <td>
 <asp:RequiredFieldValidator runat="server" id="rqvddlFormat" InitialValue="0" controltovalidate="ddlFormat" errormessage="*" />

    </td>

</tr>


<tr>

<th>Kapak Fotoğrafı</th>

<td> 
    <asp:FileUpload ID="flUpload" runat="server" />
    </td>

</tr>



<tr>

<td></td>

<td> <asp:Button ID="btnSave" runat="server" Text="Kaydet" CssClass="btn btn-default" OnClick="btnSave_Click"/></td>



   </tr>
</table>
</asp:Content>
