<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MunicipioListagem.aspx.cs" Inherits="MVApp.MunicipioListagem" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <table id="mainTbl" width="800px">
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 210px">&nbsp;</td>
                <td style="width: 10px">&nbsp;</td>
                <td style="width: 78px">&nbsp;</td>
                <td style="width: 317px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    Nome</td>
                <td style="width: 210px">
                    <asp:TextBox ID="TxtNome" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 10px">&nbsp;</td>
                <td style="width: 78px">
                    &nbsp;</td>
                <td style="width: 317px">
                    &nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    Atividade</td>
                <td style="width: 210px">
                <asp:DropDownList ID="CboAtiv" runat="server" Width="210px"></asp:DropDownList>
                </td>
                <td style="width: 10px">&nbsp;</td>
                <td style="width: 78px">
                    Pais</td>
                <td style="width: 317px">
                <asp:DropDownList ID="CboPais" runat="server" Width="210px" AutoPostBack="true"
                    onselectedindexchanged="CboPais_SelectedIndexChanged"></asp:DropDownList>
                </td>
                <td style="width: 79px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    Ano 
                    votação</td>
                <td style="width: 210px">
                <asp:DropDownList ID="CboAno" runat="server" Width="210px">
                    </asp:DropDownList>
                </td>
                <td style="width: 10px">&nbsp;</td>
                <td style="width: 78px">
                    Estado</td>
                <td style="width: 317px">
                <asp:DropDownList ID="CboEstNovo" runat="server"  Width="210px"></asp:DropDownList>
                </td>
                <td style="width: 79px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td style="width: 10px">&nbsp;</td>
                <td style="width: 78px">
                    &nbsp;</td>
                <td style="width: 317px">
                    &nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    <asp:Button ID="BtnPesq" runat="server" Text="Buscar" CssClass="blueB" 
                        onclick="BtnPesq_Click1" />
                </td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td style="width: 10px">&nbsp;</td>
                <td style="width: 78px">
                    Ordenação</td>
                <td style="width: 317px">
                <asp:DropDownList ID="CboOrd" runat="server" Width="210px">
                    <asp:ListItem>Nome</asp:ListItem>
                    <asp:ListItem>Votos por ano</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 79px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td colspan="5"><asp:Literal  ID="LitRes" runat="server"></asp:Literal></td>
                <td style="width: 79px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 210px">&nbsp;</td>
                <td style="width: 10px">&nbsp;</td>
                <td style="width: 78px">&nbsp;</td>
                <td style="width: 317px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
            </tr>
        </table>
        </div>
    </fieldset>    
</form>
</asp:Content>