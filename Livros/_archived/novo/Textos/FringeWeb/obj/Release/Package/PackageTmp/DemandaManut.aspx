<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DemandaManut.aspx.cs" Inherits="MVApp.DemandaManut" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
    <cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Informações sobre a demanda
                <asp:Literal  ID="LitId" runat="server"></asp:Literal>
                </h6></div>
            <table id="mainTbl" width='1050px'>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td style="width: 34px" >
                    &nbsp;</td>
                <td style="width: 106px" >
                    &nbsp;</td>
                <td style="width: 196px" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                    Interessados</td>
                <td colspan="4" >
                    <asp:TextBox ID="TxtInt" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                    <cc1:AutoCompleteExtender ID="TxtInt_AutoCompleteExtender" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_participante" TargetControlID="TxtInt">
                    </cc1:AutoCompleteExtender>
                </td>
                <td >
                        <asp:Button ID="BtnInsInt" runat="server" CssClass="blueB" 
                            onclick="BtnInsInt_Click" Text="Inserir" />
                </td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                    &nbsp;</td>
                <td colspan="4" >
                    <asp:Repeater ID="repInt" OnItemCommand="repInt_Delete" runat="server">
                        <HeaderTemplate>
                            <table style="width: 100%; min-width: 100%;" border="0" cellspacing="0" cellpadding="2">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr valign="top" align="left">
                                <td valign="top" align="left">
                                    <b><asp:Label ID="lblInt" runat="server" Text="<%# Container.DataItem %>"></asp:Label></b>
                                </td>
                                <td valign="top" align="right">
                                    <asp:LinkButton ID="lkbRemoverInt" CommandArgument="delete" CommandName="repInt_Delete"
                                        runat="server">Remover</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></tbody></table></FooterTemplate>
                    </asp:Repeater>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                    Indicações</td>
                <td colspan="4" >
                    <asp:TextBox ID="TxtInd" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_participante" TargetControlID="TxtInd">
                    </cc1:AutoCompleteExtender>
                </td>
                <td >
                        <asp:Button ID="BtnInsInd" runat="server" CssClass="blueB" 
                            onclick="BtnInsInd_Click" Text="Inserir" />
                </td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                    &nbsp;</td>
                <td colspan="4" >
                    <asp:Repeater ID="repInd" OnItemCommand="repInd_Delete" runat="server">
                        <HeaderTemplate>
                            <table style="width: 100%; min-width: 100%;" border="0" cellspacing="0" cellpadding="2">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr valign="top" align="left">
                                <td valign="top" align="left">
                                    <b><asp:Label ID="lblInd" runat="server" Text="<%# Container.DataItem %>"></asp:Label></b>
                                </td>
                                <td valign="top" align="right">
                                    <asp:LinkButton ID="lkbRemoverInd" CommandArgument="delete" CommandName="repInd_Delete"
                                        runat="server">Remover</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></tbody></table></FooterTemplate>
                    </asp:Repeater>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                    Situação</td>
                <td >
                    <asp:DropDownList ID="CboSit" runat="server" Width="210px">
                        <asp:ListItem>Em andamento</asp:ListItem>
                        <asp:ListItem>Atendida</asp:ListItem>
                        <asp:ListItem>Não atendida</asp:ListItem>
                        <asp:ListItem>Cancelada</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 34px" >
                    &nbsp;</td>
                <td style="width: 106px" >
                    Referência</td>
                <td style="width: 196px" >
                    <asp:DropDownList ID="CboRef" runat="server" Width="210px" AutoPostBack="True" 
                        onselectedindexchanged="CboRef_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                    Usuário responsável</td>
                <td >
                    <asp:DropDownList ID="CboUser" runat="server" Width="210px">
                    </asp:DropDownList>
                </td>
                <td style="width: 34px" >
                    &nbsp;</td>
                <td style="width: 106px" >
                    Prazo</td>
                <td style="width: 196px" >
                    <input type="text" class="datepicker" id="TxtDtPrazo" runat="server"/></td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 182px" >
                        Estado</td>
                <td >
                <asp:DropDownList ID="CboEstAtiv" runat="server" AutoPostBack="True"  Width="210px"
                     onselectedindexchanged="CboEstAtiv_SelectedIndexChanged">
                </asp:DropDownList>
                </td>
                <td style="width: 34px" >
                    &nbsp;</td>
                <td style="width: 106px" >
                        Município</td>
                <td style="width: 196px" >
                <asp:DropDownList ID="CboMuniAtiv" runat="server"  Width="210px">
                </asp:DropDownList>
                    </td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td colspan="2" >
                    <strong>Descrição da demanda</strong></td>
                <td style="width: 34px" >
                    &nbsp;</td>
                <td style="width: 106px" >
                    &nbsp;</td>
                <td style="width: 196px" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td colspan="5" >
                    <asp:TextBox ID="TxtObs" runat="server"  Height="103px" 
                        MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 29px">
                    &nbsp;</td>
            </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td style="width: 182px" >
                        Estágio</td>
                    <td colspan="2" >
                        <asp:CheckBox ID="ChkEstagio" runat="server" AutoPostBack="True" 
                            oncheckedchanged="ChkEstagio_CheckedChanged" Text="Sim" />
                    </td>
                    <td style="width: 106px" >
                        &nbsp;</td>
                    <td colspan="2"  valign="top">
                        &nbsp;</td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td style="width: 182px" >
                        &nbsp;</td>
                    <td colspan="5" >
                        <asp:Panel ID="PnlEst" runat="server" Visible="false">
                        
                        <table id="p_est" width="400px">
                            <tr>
                                <td style="width: 89px">
                                    RG
                                </td>
                                <td>
                                    <asp:TextBox ID="TxtEst_RG" runat="server" MaxLength="20" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                        <tr>
                        <td style="width: 89px">Curso
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEst_Curso" runat="server" MaxLength="20" 
                                OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                        </td>
                        </tr>
                        <tr>
                        <td style="width: 89px">Semestre
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEst_Sem" runat="server" MaxLength="20" 
                                OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                        </td>
                        </tr>
                        <tr>
                        <td style="width: 89px">Local
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEst_Loc" runat="server" MaxLength="20" 
                                OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                        </td>
                        </tr>
                        <tr>
                        <td style="width: 89px">Local estágio
                        </td>
                        <td>
                            <asp:TextBox ID="TxtEst_Est" runat="server" MaxLength="20" 
                                OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                        </td>
                        </tr>
                            <tr>
                                <td style="width: 89px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>

                        </asp:Panel>
                    </td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td style="width: 182px" >
                        Patrocínio</td>
                    <td colspan="2" >
                        <asp:CheckBox ID="ChkPatrocinio" runat="server" AutoPostBack="True" 
                            oncheckedchanged="ChkPatrocinio_CheckedChanged" Text="Sim" />
                    </td>
                    <td style="width: 106px" >
                        &nbsp;</td>
                    <td colspan="2"  valign="top">
                        &nbsp;</td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td style="width: 182px" >
                        &nbsp;</td>
                    <td colspan="5" >
                        <asp:Panel ID="PnlPatrocinio" runat="server"  Visible="false">
                        
                        <table id="Table2" width="400px">
                        <tr>
                            <td style="width: 89px">
                                Projeto</td>
                                <td>
                                    <asp:TextBox ID="TxtPat_Proj" runat="server" MaxLength="20" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                        </tr>
                            <tr>
                                <td style="width: 89px">
                                    Solicitado</td>
                                <td>
                                    <asp:TextBox ID="TxtPat_Sol" runat="server" Text="0,00"
                                    MaxLength="20" onkeypress="return formataMoeda( this, event );"
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 89px">
                                    Liberado</td>
                                <td>
                                    <asp:TextBox ID="TxtPat_Lib" runat="server" Text="0,00"
                                    MaxLength="20" onkeypress="return formataMoeda( this, event );"
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 89px">
                                    Analista</td>
                                <td>
                                    <asp:TextBox ID="TxtPat_Anal" runat="server" MaxLength="20" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 89px">
                                    Dt. Início</td>
                                <td>
                                    <input type="text" class="datepicker" id="TxtPat_DtIni" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 89px">
                                    Dt. Fim</td>
                                <td>
                                    <input type="text" class="datepicker" id="TxtPat_DtFim" runat="server"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 89px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>

                        </asp:Panel>
                    </td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td style="width: 182px" >
                        Remanejamento </td>
                    <td colspan="2" >
                        <asp:CheckBox ID="ChkRemaneja" runat="server" AutoPostBack="True" 
                            oncheckedchanged="ChkRemaneja_CheckedChanged" Text="Sim" />
                    </td>
                    <td style="width: 106px" >
                        &nbsp;</td>
                    <td colspan="2"  valign="top">
                        &nbsp;</td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td style="width: 182px" >
                        &nbsp;</td>
                    <td colspan="5" >
                        <asp:Panel ID="PnlRemaneja" runat="server"  Visible="false">
                        <table id="Table3" width="400px">
                        <tr >
                            <td style="width: 140px" >
                                Unidade atual</td>
                                <td >
                                    <asp:TextBox ID="TxtRem_UndAtu" runat="server" MaxLength="20" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                        </tr>
                            <tr >
                                <td style="width: 140px" >
                                    Unidade pretendida</td>
                                <td >
                                    <asp:TextBox ID="TxtRem_UndPret" runat="server" MaxLength="20" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                            <tr >
                                <td style="width: 140px" >
                                    Observação</td>
                                <td >
                                    <asp:TextBox ID="TxtRem_Obs" runat="server" MaxLength="20" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                            <tr >
                                <td style="width: 140px" >
                                    Categoria origem</td>
                                <td >
                                    <asp:TextBox ID="TxtRem_CatOrig" runat="server" MaxLength="1" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                            <tr >
                                <td style="width: 140px" >
                                    Categoria destino</td>
                                <td >
                                    <asp:TextBox ID="TxtRem_CatDest" runat="server" MaxLength="1" 
                                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            </tr>
                            <tr >
                                <td style="width: 140px" >
                                    &nbsp;</td>
                                <td >
                                    &nbsp;</td>
                            </tr>
                        </table>
                        </asp:Panel>
                    </td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td colspan="3" >
                        <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                            onclick="BtnSalvar_Click" Text="Salvar" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnImp" runat="server" CssClass="blueB" 
                            onclick="BtnImp_Click" Text="Imprimir" />
                    </td>
                    <td style="width: 106px" >
                        &nbsp;</td>
                    <td colspan="2"  valign="top">
                        &nbsp;</td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px" >
                        &nbsp;</td>
                    <td style="width: 182px" >
                        &nbsp;</td>
                    <td colspan="2" >
                        &nbsp;</td>
                    <td style="width: 106px" >
                        &nbsp;</td>
                    <td colspan="2"  valign="top">
                        &nbsp;</td>
                    <td style="width: 29px" valign="top">
                        &nbsp;</td>
                </tr>
        </table>
        </div>
    </fieldset>

<asp:Panel runat="server" ID="PnlExtras" >

    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>
                Encaminhamentos da demanda</h6></div>
            <table id="mainTbl">
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td colspan="4" >
                    &nbsp;</td>
                <td style="width: 272px">
                    &nbsp;</td>
                <td style="width: 24px" class="navigation_button">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 83px" >
                    Inicio</td>
                <td style="width: 228px" >
                    <input type="text" class="datepicker" id="TxtDtEncIni" runat="server"/>
                </td>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 110px">
                    &nbsp;</td>
                <td style="width: 272px" >
                    &nbsp;</td>
                <td style="width: 24px" class="navigation_button">
                    &nbsp;</td>
            </tr>
                <tr>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td style="width: 83px">
                        Prazo</td>
                    <td style="width: 228px">
                        <input type="text" class="datepicker" id="TxtDtEncPrazo" runat="server"/>
                    </td>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td style="width: 110px">
                        &nbsp;</td>
                    <td style="width: 272px">
                        &nbsp;</td>
                    <td class="navigation_button" style="width: 24px">
                        &nbsp;</td>
                </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 83px" >
                    Responsável</td>
                <td colspan="4" >
                    <asp:TextBox ID="TxtResp" runat="server" MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                    <cc1:AutoCompleteExtender ID="TxtResp_AutoCompleteExtender" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_participante" TargetControlID="TxtResp">
                    </cc1:AutoCompleteExtender>
                </td>
                <td style="width: 24px" class="navigation_button">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 83px" >
                    Situação</td>
                <td style="width: 228px" >
                    <asp:DropDownList ID="CboSitEnc" runat="server" Width="210px">
                        <asp:ListItem>Em andamento</asp:ListItem>
                        <asp:ListItem>Atendido</asp:ListItem>
                        <asp:ListItem>Não atendido</asp:ListItem>
                        <asp:ListItem>Cancelado</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 24px" >
                    &nbsp;</td>

                    <td style="width: 110px">
                        &nbsp;</td>
                    <td style="width: 272px">
                        &nbsp;</td>
                
                <td style="width: 24px" class="navigation_button">
                    &nbsp;</td>
            </tr>
                <tr>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td style="width: 83px">
                        &nbsp;</td>
                    <td style="width: 228px">
                        &nbsp;</td>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td style="width: 110px">
                        &nbsp;</td>
                    <td style="width: 272px">
                        &nbsp;</td>
                    <td style="width: 24px" class="navigation_button">
                        &nbsp;</td>
                </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 83px" >
                    Descrição
                </td>
                <td colspan="4" >
                    <asp:TextBox ID="TxtEncDesc" runat="server"  Height="98px" 
                        MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
                <td style="width: 24px" class="navigation_button">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 83px" >
                    &nbsp;</td>
                <td style="width: 228px" >
                    &nbsp;</td>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td style="width: 110px">
                    &nbsp;</td>
                <td style="width: 272px" >
                    &nbsp;</td>
                <td style="width: 24px" class="navigation_button">
                    &nbsp;</td>
            </tr>
                <tr>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td style="width: 83px">
                        <asp:Button ID="BtnSalvarEnc" runat="server" CssClass="blueB" 
                            onclick="BtnSalvarEnc_Click1" Text="Salvar" />
                    </td>
                    <td style="width: 228px">
                        <asp:Button ID="BtnLimp" runat="server" CssClass="blueB" 
                            onclick="BtnLimp_Click" Text="Limpar campos" />
                    </td>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td style="width: 110px">
                        &nbsp;</td>
                    <td style="width: 272px">
                        &nbsp;</td>
                    <td style="width: 24px" class="navigation_button">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 24px">
                        &nbsp;</td>
                    <td colspan="6">
                        <asp:Literal  ID="LitEnc" runat="server"></asp:Literal>
                    </td>
                </tr>
            <tr>
                <td style="width: 24px" >
                    &nbsp;</td>
                <td colspan="4" >
                    <br />
                </td>
                <td style="width: 272px" >
                    &nbsp;</td>
                <td style="width: 24px" class="navigation_button" >
                    &nbsp;</td>
            </tr>
        </table>
        </div>
    </fieldset>
    
    </form>    

</asp:Panel>

</asp:Content>
