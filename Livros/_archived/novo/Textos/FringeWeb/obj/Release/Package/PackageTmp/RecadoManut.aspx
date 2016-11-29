<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RecadoManut.aspx.cs" Inherits="MVApp.RecadoManut" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Recado para gabinete</h6></div>
            <table id="mainTbl" style="width: 690px" >
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 83px" >
            </td>
            <td style="width: 215px" >
            </td>
            <td style="width: 21px" class="navigation_button" >
                &nbsp;</td>
            <td style="width: 54px" >
            </td>
            <td style="width: 213px" >
            </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 83px" >
                Data</td>
            <td style="width: 215px" >
                <input type="text" class="datepicker" id="TxtDtIni" runat="server"/>
            </td>
            <td style="width: 21px" class="navigation_button" >
                &nbsp;</td>
            <td style="width: 54px" >
                Hora</td>
            <td style="width: 213px" >
                <asp:TextBox ID="TxtHora" runat="server"  enabled="false"
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
            </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
                <tr>
                    <td style="width: 20px">
                        &nbsp;</td>
                    <td style="width: 83px">
                        Pessoa</td>
                    <td colspan="4">
                        <asp:TextBox ID="TxtParticip" runat="server"  MaxLength="150" 
                            OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                            OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                            <cc1:AutoCompleteExtender ID="TxtInt_AutoCompleteExtender" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_participante" TargetControlID="TxtParticip">
                    </cc1:AutoCompleteExtender>

                        </td>
                    <td style="width: 28px">
                        &nbsp;</td>
                </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 83px" valign="middle" >
                Assunto</td>
            <td colspan="4">
                <asp:TextBox ID="TxtAssunto" runat="server"  Height="98px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                <br />
            </td>
            <td style="width: 28px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 83px" >
                        Pendente</td>
            <td colspan="4">
                        <asp:DropDownList ID="CboPend" runat="server"  Width="210px">
                            <asp:ListItem>Não</asp:ListItem>
                            <asp:ListItem>Sim</asp:ListItem>
                        </asp:DropDownList>

                        </td>
            <td style="width: 28px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 83px" >
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 28px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 83px" >
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px" class="navigation_button" >
                &nbsp;</td>
            <td style="width: 54px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top" style="width: 20px" >
                &nbsp;</td>
            <td colspan="2" valign="top">
                <asp:Literal  ID="LitVis" runat="server"></asp:Literal>
            </td>
            <td valign="top" class="navigation_button" style="width: 21px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                <asp:Literal  ID="LitAudit" runat="server"></asp:Literal>
            </td>
            <td valign="top" style="width: 28px">
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top" style="width: 20px" >
                &nbsp;</td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td valign="top" class="navigation_button" style="width: 21px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td valign="top" style="width: 28px">
                &nbsp;</td>
        </tr>
    </table>
</div>
</fieldset>
</form>

</asp:Content>
