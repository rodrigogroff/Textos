<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdmPerfilListagem.aspx.cs" Inherits="MVApp.AdmPerfilListagem" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <table id="mainTbl">
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 426px">&nbsp;</td>
                <td style="width: 27px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">Nome</td>
                <td style="width: 426px">
                    <asp:TextBox ID="TxtNome" runat="server" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 27px">&nbsp;</td>
                <td style="width: 20px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 426px">
                    &nbsp;</td>
                <td style="width: 27px">&nbsp;</td>
                <td style="width: 20px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    <asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" onclick="BtnPesq_Click" />
                </td>
                <td style="width: 426px">
                    &nbsp;</td>
                <td style="width: 27px">&nbsp;</td>
                <td style="width: 20px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
                <td style="width: 426px">
                    &nbsp;</td>
                <td style="width: 27px">&nbsp;</td>
                <td style="width: 20px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px" colspan="3"><asp:Literal  ID="LitRes" runat="server"></asp:Literal></td>                
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 426px">&nbsp;</td>
                <td style="width: 27px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
    
</form>

</asp:Content>
