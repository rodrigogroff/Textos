<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RecadoListagem.aspx.cs" Inherits="MVApp.RecadoListagem" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <table id="mainTbl" style="width: 900px">
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px">&nbsp;</td>
                <td style="width: 234px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
                <td style="width: 82px">&nbsp;</td>
                <td style="width: 285px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px;">Assunto</td>
                <td style="width: 234px">
                    <asp:TextBox ID="TxtNome" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 24px" >&nbsp;</td>
                <td style="width: 82px" >&nbsp;</td>
                <td style="width: 285px">
                    &nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px;">Pessoa</td>
                <td colspan="4">
                    <asp:TextBox ID="TxtParticip" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                        
                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionListCssClass="autocomplete_completionListElement"
                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                            MinimumPrefixLength="3" ServiceMethod="Autocomplete_participante" 
                                            TargetControlID="TxtParticip">
                    </cc1:AutoCompleteExtender>
                </td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px">Data inicial</td>
                <td style="width: 234px">
                    <input type="text" class="datepicker" id="TxtDtIni" runat="server"/>
                </td>
                <td style="width: 24px">&nbsp;</td>
                <td style="width: 82px">Data final</td>
                <td style="width: 285px">
                    <input type="text" class="datepicker" id="TxtDtFim" runat="server"/>
                </td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
                <tr>
                    <td style="width: 20px">
                        &nbsp;</td>
                    <td style="width: 146px">
                        Atendido</td>
                    <td style="width: 234px">
                        <asp:DropDownList ID="CboPend" runat="server"  Width="210px">
                            <asp:ListItem>(Selecione)</asp:ListItem>
                            <asp:ListItem>Não</asp:ListItem>
                            <asp:ListItem>Sim</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td style="width: 82px">
                        &nbsp;</td>
                    <td style="width: 285px">
                        &nbsp;</td>
                    <td style="width: 24px">
                        &nbsp;</td>
                </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px">&nbsp;</td>
                <td style="width: 234px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
                <td style="width: 82px">&nbsp;</td>
                <td style="width: 285px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" onclick="BtnPesq_Click" />
                </td>
                <td style="width: 24px">&nbsp;</td>
                <td style="width: 82px">&nbsp;</td>
                <td style="width: 285px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px">&nbsp;</td>
                <td style="width: 234px">&nbsp;</td>
                <td style="width: 24px" >&nbsp;</td>
                <td style="width: 82px" >&nbsp;</td>
                <td style="width: 285px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td colspan="5"><asp:Literal  ID="LitRes" runat="server"></asp:Literal></td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px">
                <asp:Button ID="BtnImp" runat="server" CssClass="blueB" Text="Imprimir" 
                    onclick="BtnImp_Click" style="text-align: right" />
                </td>
                <td style="width: 234px">&nbsp;</td>
                <td style="width: 24px" >&nbsp;</td>
                <td style="width: 82px" >&nbsp;</td>
                <td style="width: 285px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 146px">&nbsp;</td>
                <td style="width: 234px">&nbsp;</td>
                <td style="width: 24px" >&nbsp;</td>
                <td style="width: 82px" >&nbsp;</td>
                <td style="width: 285px">&nbsp;</td>
                <td style="width: 24px">&nbsp;</td>
            </tr>
        </table>
        </div>
    </fieldset>
</form>
</asp:Content>
