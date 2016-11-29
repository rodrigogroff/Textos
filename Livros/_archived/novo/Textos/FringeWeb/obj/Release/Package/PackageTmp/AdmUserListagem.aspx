<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdmUserListagem.aspx.cs" Inherits="MVApp.AdmUserListagem" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <table id="mainTbl" width="900px">
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 98px">&nbsp;</td>
                <td style="width: 150px">&nbsp;</td>
                <td style="width: 21px">&nbsp;</td>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 102px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 98px">Nome</td>
                <td style="width: 150px">
                    <asp:TextBox ID="TxtNome" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 21px">&nbsp;</td>
                <td style="width: 42px">
                    Ativo</td>
                <td style="width: 102px">
                    <asp:DropDownList ID="CboAtivo" runat="server" Width="210px">
                        <asp:ListItem>Não</asp:ListItem>
                        <asp:ListItem Selected="True">Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 98px">&nbsp;</td>
                <td style="width: 150px">
                    &nbsp;</td>
                <td style="width: 21px">&nbsp;</td>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 102px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 98px">
                    <asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" onclick="BtnPesq_Click" />
                </td>
                <td style="width: 150px">
                    &nbsp;</td>
                <td style="width: 21px">&nbsp;</td>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 102px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td colspan="5"><table id="mainTblRep"><tr><td width="8px"></td><td><asp:Literal  ID="LitRes" runat="server"></asp:Literal></td></tr></table></td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 98px">
                    <asp:Button ID="BtnImp" runat="server" Text="Imprimir" CssClass="blueB" 
                        onclick="BtnImp_Click" />
                </td>
                <td style="width: 150px">&nbsp;</td>
                <td style="width: 21px">&nbsp;</td>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 102px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 98px">&nbsp;</td>
                <td style="width: 150px">&nbsp;</td>
                <td style="width: 21px">&nbsp;</td>
                <td style="width: 42px">&nbsp;</td>
                <td style="width: 102px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
            </tr>
        </table>
        </div>
    </fieldset>
</form>
</asp:Content>
