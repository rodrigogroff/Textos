<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DemandaListagem.aspx.cs" Inherits="MVApp.DemandaListagem" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<script type="text/javascript">
    $(function () {
        $("#tabContainer").tabs();
        var currTab = $("#<%= HFCurrTabIndex.ClientID %>").val();
        $("#tabContainer").tabs({ selected: currTab });
    });
</script>

<table width="1050px"><tr><td><asp:Literal  ID="LitRes" runat="server"></asp:Literal></td></tr></table>

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <table id="Table2" width="1050px">
            <tr>
                <td>
                    <div id="tabContainer" class="tabs">
                        <asp:HiddenField ID="HFCurrTabIndex" runat="server" Value="0" />
                        <ul>
                            <li><a href="#tabs-1">Situação</a></li>
                            <li><a href="#tabs-2">Pessoal</a></li>
                            <li><a href="#tabs-4">Localidade</a></li>
                        </ul>
                        <div id="tabs-1">
                            <table>
                            <tr>
                                <td width='12px'></td>
                                <td style="width: 119px">Código</td>
                                <td width='120px'>
                                    <asp:TextBox ID="TxtCodigo" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                                        ></asp:TextBox>
                                    </td>
                                <td style="width: 22px"></td>
                                <td width='90px'>Referência</td>
                                <td width='120px'>
                                    <asp:DropDownList ID="CboRef" runat="server" Width="210px">
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 33px"></td>
                                <td style="width: 104px">Prazo</td>
                                <td style="width: 200px">
                <input type="text" class="datepicker" id="TxtDtIni" runat="server"/></td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">Situação</td>
                                <td width='120px'>
                                    <asp:CheckBoxList ID="ChkSitu" runat="server">
                                    </asp:CheckBoxList>
                                    </td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>Responsável</td>
                                <td width='120px'>
                                    <asp:DropDownList ID="CboUser" runat="server" Width="210px">
                                    </asp:DropDownList>
                                </td>
                                <td style="width: 33px">&nbsp;</td>
                                <td style="width: 104px">Atraso (dias)</td>
                                <td style="width: 200px">
    <asp:TextBox ID="TxtDiasAtraso" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
        ></asp:TextBox>


                                </td>
                            </tr>
                            </table>

                            <table>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">
                                    &nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 227px">
                                    &nbsp;</td>
                                <td style="width: 227px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">
                                    Descrição</td>
                                <td width='120px'>
    <asp:TextBox ID="TxtNome" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
        ></asp:TextBox>


                                </td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 227px">
                                    &nbsp;</td>
                                <td style="width: 227px">
                                    &nbsp;</td>
                            </tr>
                            </table>

                            <br />

                            <table>
                            <tr>
                            <td width="10px"></td>
                            <td><asp:CheckBox ID="ChkSemAnd" runat="server" Text="Sem andamentos" /></td><td width="14px"></td>
                            <td><asp:CheckBox ID="ChkOficio" runat="server" Text="Oficio"  /></td><td width="14px"></td>
                            <td><asp:CheckBox ID="ChkNews" runat="server" Text="News"  /></td><td width="14px"></td>
                            <td><asp:CheckBox ID="ChkMateria" runat="server" Text="Matéria"  /></td><td width="14px"></td>
                            <td><asp:CheckBox ID="ChkEm" runat="server" Text="Emenda"  /></td><td width="14px"></td>
                            <td><asp:CheckBox ID="ChkOrc" runat="server" Text="Orçamento"  /></td><td width="14px"></td>
                            <td><asp:CheckBox ID="ChkImprensa" runat="server" Text="Envio Imprensa"  /></td>
                            </tr>
                            </table>

                        </div>
                        
                        <div id="tabs-2">
                            <table>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 131px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td style="width: 340px">
                                    &nbsp;</td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">Interessado</td>
                                <td colspan="4">
                                    <asp:TextBox ID="TxtInter" runat="server"  MaxLength="150" OnBlur="this.style.borderColor='';this.style.borderStyle='';" OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="TxtParticip0_AutoCompleteExtender" runat="server" CompletionListCssClass="autocomplete_completionListElement"
                                                              CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                              MinimumPrefixLength="3" ServiceMethod="Autocomplete_participante" TargetControlID="TxtInter"></cc1:AutoCompleteExtender>
                                </td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td colspan="4">
                                    &nbsp;</td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">Indicado</td>
                                <td colspan="4">
                                    <asp:TextBox ID="TxtInd" runat="server"  MaxLength="150" OnBlur="this.style.borderColor='';this.style.borderStyle='';" OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionListCssClass="autocomplete_completionListElement"                       
                                                              CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                              MinimumPrefixLength="3" ServiceMethod="Autocomplete_participante" TargetControlID="TxtInd"></cc1:AutoCompleteExtender>
                                </td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td colspan="4">
                                    &nbsp;</td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">Encaminhado</td>
                                <td colspan="4">
                                    <asp:TextBox ID="TxtEnca" runat="server"  MaxLength="150" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                    <cc1:AutoCompleteExtender ID="TxtEnca_AutoCompleteExtender" runat="server" CompletionListCssClass="autocomplete_completionListElement"                       
                                                              
                                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                                              MinimumPrefixLength="3" 
                                        ServiceMethod="Autocomplete_participante" TargetControlID="TxtEnca"></cc1:AutoCompleteExtender>
                                </td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 131px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td style="width: 340px">
                                    &nbsp;</td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            </table>
                        </div>

                        <div id="tabs-4">
                            <table>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">Estado</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboEst" runat="server"  onselectedindexchanged="CboEst_SelectedIndexChanged" AutoPostBack="True" Width="210px">        
                            </asp:DropDownList>
                                </td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>Município</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboMuni" runat="server"  Width="210px">
                            </asp:DropDownList>
                                </td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">Macroregião</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboReg" runat="server" Width="210px" AutoPostBack="True" 
                                onselectedindexchanged="CboReg_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>Microregião</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboMicroReg" runat="server" Width="210px"></asp:DropDownList>
                                </td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td width='12px'>&nbsp;</td>
                            </tr>
                            </table>
                        </div>

                    </div>
                </td>
            </tr>
            </table>

<table class="tbl_filter" style="width: 850px" >
<tr>
<td style="width: 11px">
    &nbsp;</td>
<td style="width: 84px">
    &nbsp;</td>
<td style="width: 252px">
    &nbsp;</td>

<td style="width: 132px" >
    &nbsp;</td>

<td style="width: 68px">
    &nbsp;</td>

<td style="width: 210px">
    &nbsp;</td>
</tr>
<tr>
<td style="width: 11px">
    &nbsp;</td>
<td colspan="2">
<asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" 
        onclick="BtnPesq_Click" />
    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnImp" runat="server" Text="Imprimir" CssClass="blueB" 
                        onclick="BtnImp_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnLimparCampos" runat="server" 
        Text="Limpar campos" CssClass="blueB" 
                        onclick="BtnLimparCampos_Click" Width="138px" />
    </td>

<td style="width: 132px" align="left" >
    <asp:Literal ID="LitTot" runat="server"></asp:Literal>
    </td>

<td style="width: 68px">
    Ordenar por</td>

<td style="width: 210px">
                <asp:DropDownList ID="CboOrd" runat="server" Width="210px">
                    <asp:ListItem Value="DD">Prazo</asp:ListItem>
                    <asp:ListItem Value="DA">Prazo (antigas)</asp:ListItem>
                    <asp:ListItem Value="REF">Referência</asp:ListItem>
                    <asp:ListItem Value="USR">Usuário</asp:ListItem>
                    <asp:ListItem Value="DESC">Descrição</asp:ListItem>
                    <asp:ListItem Value="MUNI">Município</asp:ListItem>
                </asp:DropDownList>
            </td>
</tr>
<tr>
<td style="width: 11px">
    &nbsp;</td>
<td style="width: 84px">
    &nbsp;</td>
<td style="width: 252px">
    &nbsp;</td>

<td style="width: 132px" >
    &nbsp;</td>

<td style="width: 68px">
    &nbsp;</td>

<td style="width: 210px">
    &nbsp;</td>

</tr>
<tr>
<td style="width: 11px">
    &nbsp;</td>
<td style="width: 84px">
    &nbsp;</td>
<td style="width: 252px">
    &nbsp;</td>

<td style="width: 132px" >
    &nbsp;</td>

<td style="width: 68px">
    &nbsp;</td>

<td style="width: 210px">
    &nbsp;</td>

</tr>
</table>           
         
        </div>
    </fieldset>       
    
</form>

</asp:Content>

