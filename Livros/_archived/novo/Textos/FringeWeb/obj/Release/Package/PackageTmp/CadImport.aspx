<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadImport.aspx.cs" Inherits="MVApp.CadImport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Importação de arquivos</h6></div>
            <table id="mainTbl" width="450px">
            <tr>
            <td style="width: 24px" rowspan="3" valign="top">
                &nbsp;</td>
            <td style="width: 88px;">
                &nbsp;</td>
            <td style="width: 342px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px;">
                Arquivo</td>
            <td style="width: 342px;">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 342px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="BtnImportar" runat="server" CssClass="blueB" Text="Importar" 
                    onclick="BtnUpdate_Click" style="text-align: right" />
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</asp:Content>

