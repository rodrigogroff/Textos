<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadNovo.aspx.cs" Inherits="MVApp.CadNovo" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados cadastrais</h6></div>
            <table id="mainTbl">

<tr>
<td valign="middle" class="style2">
    
    <table style="width: 859px">
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 117px">
                &nbsp;</td>
            <td style="width: 270px" valign="top">
                    &nbsp;</td>
            <td style="width: 16px" valign="middle">
                &nbsp;</td>
            <td style="width: 87px" valign="middle">
                &nbsp;</td>
            <td style="width: 289px" valign="middle">
                &nbsp;</td>
            <td style="width: 10px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 117px">
                Nome</td>
            <td style="width: 270px" valign="top">
                    <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_participante" TargetControlID="TxtNome">
                    </cc1:AutoCompleteExtender>
            </td>
            <td style="width: 16px" valign="middle">
                &nbsp;</td>
            <td style="width: 87px" valign="middle">
                Apelido</td>
            <td style="width: 289px" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ></asp:TextBox>
            </td>
            <td style="width: 10px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 117px">
                Tipo pessoa</td>
            <td colspan="4">
                <asp:DropDownList ID="CboTP" runat="server" Width="210px" AutoPostBack="True" 
                    onselectedindexchanged="CboTP_SelectedIndexChanged">
                    <asp:ListItem>Física</asp:ListItem>
                    <asp:ListItem>Jurídica</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 117px">
                Sexo</td>
            <td colspan="4">
                <asp:DropDownList ID="CboTSexo" runat="server" Width="210px">
                    <asp:ListItem>Feminino</asp:ListItem>
                    <asp:ListItem>Masculino</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 117px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 117px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 117px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
    </table>
    </td>

    </tr>

    </table>
</div>
</fieldset>
</form>


</asp:Content>


