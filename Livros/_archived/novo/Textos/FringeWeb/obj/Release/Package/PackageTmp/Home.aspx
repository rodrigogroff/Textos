<%@ Page Language="C#" AutoEventWireup="true" Inherits="Home" MasterPageFile="~/Main.master" ValidateRequest="false" EnableEventValidation="false" Codebehind="Home.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<table>
<tr>
<td valign="top">
<table>
    <tr>
        <td><h6>Agenda do gabinete</h6></td>
        <td width='20px'></td>
        <td><a href='AgendaManut.aspx'>Nova </a> | <a href='AgendaListagem.aspx?dia=1'>Hoje</a> | <a href='AgendaListagem.aspx?sem=1'>Semana</a></td>
        <td width='20px'></td>
        <td><input type="text" class="datepicker" id="TxtDtIni" runat="server"/></td><td width='8px'></td>
        <td><asp:Button runat="server" ID="BtnSubmit" CssClass="blueB" onclick="BtnSubmit_Click" Text=">"/></td>
    </tr>
</table>
<asp:Literal  ID="LitRes2" runat="server"></asp:Literal>
</td>
<td style="width: 40px" valign="top"></td>    
<td valign="top">
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>

</td>
</tr>
</table>
</asp:Content>