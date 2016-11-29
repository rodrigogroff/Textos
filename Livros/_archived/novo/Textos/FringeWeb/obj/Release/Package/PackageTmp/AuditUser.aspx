<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AuditUser.aspx.cs" Inherits="MVApp.AuditUser" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <table id="mainTbl" width="800px">
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 163px">&nbsp;</td>
                <td style="width: 302px">&nbsp;</td>
                <td style="width: 111px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 163px">
                    Usuário</td>
                <td style="width: 302px">
                    <asp:DropDownList ID="CboUser" runat="server" Width="210px">
                    </asp:DropDownList>
                </td>
                <td style="width: 111px">&nbsp;</td>
                <td style="width: 79px">
                    <asp:Button ID="BtnPesq" runat="server" Text="Buscar" CssClass="blueB" 
                        onclick="BtnPesq_Click1" />
                </td>
                <td style="width: 79px">
                    &nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 163px">
                    Data inicial</td>
                <td style="width: 302px">
                <input type="text" class="datepicker" id="TxtDtIni" runat="server"/></td>
                <td style="width: 111px">&nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
                <td style="width: 79px">
                    &nbsp;</td>
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
                <td style="width: 163px">&nbsp;</td>
                <td style="width: 302px">&nbsp;</td>
                <td style="width: 111px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
                <td style="width: 79px">&nbsp;</td>
            </tr>
        </table>
        </div>
    </fieldset>    
</form>
</asp:Content>

