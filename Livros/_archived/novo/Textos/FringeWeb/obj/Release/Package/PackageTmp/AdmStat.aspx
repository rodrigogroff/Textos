<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdmStat.aspx.cs" Inherits="MVApp.AdmStat" %>
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
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">&nbsp;</td>
                <td style="width: 179px">&nbsp;</td>
                <td style="width: 324px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">Módulo</td>
                <td style="width: 210px">
                <asp:DropDownList ID="CboMod" runat="server" Width="210px">
                </asp:DropDownList>
                </td>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">&nbsp;</td>
                <td style="width: 179px">&nbsp;</td>
                <td style="width: 324px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">&nbsp;</td>
                <td style="width: 179px">&nbsp;</td>
                <td style="width: 324px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">Período inicial</td>
                <td style="width: 210px">
                            <input type="text" class="datepicker" id="TxtDtIni" runat="server"/></td>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">Período final</td>
                <td style="width: 179px">
                            <input type="text" class="datepicker" id="TxtDtFim" runat="server"/></td>
                <td style="width: 324px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">&nbsp;</td>
                <td style="width: 179px">&nbsp;</td>
                <td style="width: 324px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    <asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" onclick="BtnPesq_Click" />
                </td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">&nbsp;</td>
                <td style="width: 179px">&nbsp;</td>
                <td style="width: 324px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">&nbsp;</td>
                <td style="width: 179px">&nbsp;</td>
                <td style="width: 324px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td colspan="6">
                    <asp:Literal  ID="LitRes" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
                <td style="width: 210px">
                    &nbsp;</td>
                <td style="width: 46px">&nbsp;</td>
                <td style="width: 131px">&nbsp;</td>
                <td style="width: 179px">&nbsp;</td>
                <td style="width: 324px">
                    &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
    
</form>

</asp:Content>
