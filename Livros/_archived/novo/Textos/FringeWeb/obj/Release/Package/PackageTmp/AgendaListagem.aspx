<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AgendaListagem.aspx.cs" Inherits="MVApp.AgendaListagem" %>
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

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <div id="tabContainer" class="tabs">
                <asp:HiddenField ID="HFCurrTabIndex" runat="server" Value="0" />
                <ul>
                    <li><a href="#tabs-1">Datas</a></li>
                    <li><a href="#tabs-2">Localidade</a></li>
                    <li><a href="#tabs-3">Participantes / Feiras</a></li>
                </ul>

                <div id="tabs-1">
                    <table id="tbl2" style="width: 733px">
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 104px">&nbsp;</td>
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
                        <td style="width: 104px">Texto</td>
                        <td width='120px'>
                    <asp:TextBox ID="TxtNome" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>Tipo de agenda</td>
                        <td width='120px'>
                            <asp:DropDownList ID="CboTipo" runat="server" Width="210px"></asp:DropDownList>
                            </td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 104px">&nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>&nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'></td>
                        <td style="width: 104px">Data inicial</td>
                        <td width='120px'>
                            <input type="text" class="datepicker" id="TxtDtIni" runat="server"/></td>
                        <td style="width: 22px"></td>
                        <td width='90px'>Data final</td>
                        <td width='120px'>
                            <input type="text" class="datepicker" id="TxtDtFim" runat="server"/></td>
                        <td width='12px'></td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 104px">&nbsp;</td>
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
            
                <div id="tabs-2">
                    <table id="Table1" style="width: 733px">
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
                            <asp:DropDownList ID="CboEst" runat="server" AutoPostBack="True" onselectedindexchanged="CboEstAtiv_SelectedIndexChanged" Width="210px">
                            </asp:DropDownList>
                            </td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>Município</td>
                            <td width='120px'>
                            <asp:DropDownList ID="CboMuni" runat="server" Width="210px"></asp:DropDownList>
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

                <div id="tabs-3">
                    <table id="Table2" style="width: 733px">
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 75px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px' ></td>
                            <td style="width: 75px; height: 22px;">Participante</td>
                            <td colspan="4" >
                    <asp:TextBox ID="TxtParticip" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                        
                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionListCssClass="autocomplete_completionListElement"
                                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" CompletionListItemCssClass="autocomplete_listItem"
                                            MinimumPrefixLength="3" ServiceMethod="Autocomplete_participante" 
                                            TargetControlID="TxtParticip">
                    </cc1:AutoCompleteExtender>
                            </td>
                            <td width='12px' ></td>
                        </tr>
                        <tr>
                            <td width='12px' ></td>
                            <td style="width: 75px; height: 22px;">Veículo</td>
                            <td colspan="4" >
                                    <asp:TextBox ID="TxtEmpresa" runat="server"  MaxLength="150" 
                                OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                            <cc1:AutoCompleteExtender ID="TxtEnt_AutoCompleteExtender" runat="server" 
                                CompletionListCssClass="autocomplete_completionListElement" 
                                CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                                ServiceMethod="Autocomplete_pj_cad" TargetControlID="TxtEmpresa">
                            </cc1:AutoCompleteExtender>
                            </td>
                            <td width='12px' ></td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 75px">Feira</td>
                            <td colspan="4">
                                <asp:TextBox ID="TxtFeira" runat="server"  MaxLength="150" 
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
                                    CompletionListCssClass="autocomplete_completionListElement" 
                                    CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                                    CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                                    ServiceMethod="Autocomplete_evento" TargetControlID="TxtFeira">
                                </cc1:AutoCompleteExtender></td>
                            <td width='12px'>&nbsp;</td>
                        </tr>
                    </table>
                </div>

                <table id="Table4" style="width: 1050px">
                 <tr>
                <td style="width: 20px">&nbsp;</td>
                <td colspan="5" valign="top">

                    <table>
                        <tr>
                        <td>
                            &nbsp;</td>
                        <td style="width: 85px">&nbsp;</td>
                        <td style="width: 107px">
                            &nbsp;</td>
                        <td style="width: 50px">&nbsp;</td>
                        <td style="width: 374px">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        </tr>
                        <tr>
                        <td>
                            <asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" onclick="BtnPesq_Click" /> &nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="BtnImp" runat="server" CssClass="blueB" Text="Imprimir" 
                    onclick="BtnImp_Click" style="text-align: right" />
                        </td>
                        <td style="width: 85px">&nbsp;</td>
                        <td style="width: 107px">
                            <asp:Button ID="BtnAnt" runat="server" Text="Semana anterior" 
                        CssClass="blueB" onclick="BtnAnt_Click" />
                            </td>
                        <td style="width: 50px">&nbsp;</td>
                        <td style="width: 374px">
                            <asp:Button ID="BtnProx" runat="server" Text="Próxima semana" 
                        CssClass="blueB" onclick="BtnProx_Click" />
                            </td>
                        <td>&nbsp;</td>
                        </tr>
                        <tr>
                        <td>
                            &nbsp;</td>
                        <td style="width: 85px">&nbsp;</td>
                        <td style="width: 107px">
                            &nbsp;</td>
                        <td style="width: 50px">&nbsp;</td>
                        <td style="width: 374px">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        </tr>
                    </table>
                
                    <br />
                </td>
                </tr>
                </table>
            </div>
        </div>
    </fieldset>
    </form>

    <table id="mainTbl" style="width: 1050px;">
    <tr><td valign="top"><asp:Literal  ID="LitRes" runat="server"></asp:Literal></td></tr>
</table>

</asp:Content>
