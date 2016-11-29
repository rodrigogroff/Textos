<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadExcluir.aspx.cs" Inherits="MVApp.CadExcluir" %>
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
    
    <table style="width: 997px">
        <tr>
            <td style="width: 23px; height: 19px;">
            </td>
            <td style="width: 198px; height: 19px;">
                Foto</td>
            <td style="width: 270px; height: 19px;" valign="top">
                <asp:Literal  ID="LitFoto" runat="server"></asp:Literal>
                <br />
                <br />
            </td>
            <td style="width: 24px; height: 19px;" valign="middle">
                &nbsp;</td>
            <td style="width: 155px; height: 19px;" valign="middle">
            </td>
            <td style="width: 270px; height: 19px;" valign="middle">
                <asp:Label ID="LblViews" runat="server"></asp:Label>
            </td>
            <td style="width: 25px; height: 19px;" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                Nome</td>
            <td style="width: 270px" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 24px" valign="middle">
                &nbsp;</td>
            <td style="width: 155px" valign="middle">
                Apelido</td>
            <td style="width: 270px" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 25px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 198px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 24px">
                &nbsp;</td>
            <td style="width: 155px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                Observação</td>
            <td colspan="4">
                <asp:TextBox ID="TxtObs" runat="server"  Height="98px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine" Width="635px"></asp:TextBox>
                <br />
            </td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                Cadastro destino</td>
            <td colspan="4">
                        <asp:TextBox ID="TxtParticip" runat="server"  MaxLength="150" 
                            OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                            OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
                            CompletionListCssClass="autocomplete_completionListElement" 
                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                            CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                            ServiceMethod="Autocomplete_participante" TargetControlID="TxtParticip">
                        </cc1:AutoCompleteExtender>
                        </td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                <br />Exportar dados</td>
            <td style="width: 270px" valign='top'>
                <br />
                <table>
                <tr><td><asp:CheckBox ID="ChkTel" runat="server" Checked="True" Text="Telefones" /></td></tr>
                <tr><td><asp:CheckBox ID="ChkEma" runat="server" Checked="True" Text="Registros eletrônicos" /></td></tr>
                <tr><td><asp:CheckBox ID="ChkAtiv" runat="server" Checked="True" Text="Histórico de atividades" /></td></tr>
                <tr><td><asp:CheckBox ID="ChkEnds" runat="server" Checked="True" Text="Endereços" /></td></tr>
                </table>
                <br />
            </td>
            <td style="width: 24px">
                &nbsp;</td>
            <td style="width: 155px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                <asp:CheckBox ID="ChkNo" runat="server" Text="Não exportar dados" />
            </td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 24px">
                &nbsp;</td>
            <td style="width: 155px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 24px">
                &nbsp;</td>
            <td style="width: 155px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Excluir" />
            </td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 24px">
                &nbsp;</td>
            <td style="width: 155px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 25px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 24px">
                &nbsp;</td>
            <td style="width: 155px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 25px">
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


