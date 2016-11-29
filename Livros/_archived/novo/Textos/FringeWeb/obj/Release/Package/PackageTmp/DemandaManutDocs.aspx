<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DemandaManutDocs.aspx.cs" Inherits="MVApp.DemandaManutDocs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<br />

<table>
<tr>
<td valign="middle" class="style2">
    
    <table style="width: 1091px">
        <tr>
            <td style="width: 198px">
                Descrição</td>
            <td style="width: 317px">
                <asp:TextBox ID="TxtMotivArq" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px"></asp:TextBox>
            </td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px; height: 29px;">
                Arquivo</td>
            <td style="width: 317px; height: 29px;">
                <asp:FileUpload ID="FileUploadArq" runat="server"  />
            </td>
            <td style="width: 153px; height: 29px;">
                &nbsp;</td>
            <td style="width: 311px; height: 29px;">
                &nbsp;</td>
            <td style="width: 11px; height: 29px;">
                </td>
        </tr>
        <tr>
            <td style="width: 198px; height: 33px;">
                &nbsp;</td>
            <td style="width: 317px; height: 33px;">
                &nbsp;</td>
            <td style="width: 153px; height: 33px;">
                &nbsp;</td>
            <td style="width: 311px; height: 33px;">
                &nbsp;</td>
            <td style="width: 11px; height: 33px;">
                </td>
        </tr>
        <tr>
            <td style="width: 198px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top" colspan="2">
                <br />
                <strong>Lista de documentos</strong><br />
                <br />
                <asp:Literal  ID="LitDocs" runat="server" 
                    
                    Text="&lt;span style='Color:Red'&gt;-Nenhum registro disponível;&lt;/span&gt;"></asp:Literal>
                <br />
                <br />
            </td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
    </table>
    </td>

    <tr>
        <td valign="top">
            &nbsp;</td>
    </tr>

    <tr>
        <td valign="top">
            &nbsp;</td>
    </tr>
    </tr>

</table>


</ContentTemplate>
<Triggers>
<asp:PostBackTrigger ControlID = "BtnSalvar" />
</Triggers>

</asp:UpdatePanel>

</asp:Content>


