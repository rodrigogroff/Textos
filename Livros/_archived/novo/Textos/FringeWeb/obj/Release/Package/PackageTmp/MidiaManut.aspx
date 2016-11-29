<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MidiaManut.aspx.cs" Inherits="MVApp.MidiaManut" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Informações sobre a mídia
                <asp:Literal  ID="LitId" runat="server"></asp:Literal>
                </h6></div>
            <table id="mainTbl" width="750px" style="width: 750px">
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    &nbsp;</td>
                <td style="width: 222px" >
                    &nbsp;</td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    &nbsp;</td>
                <td style="width: 230px" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Empresa</td>
                <td colspan="4" >
                    <asp:TextBox ID="TxtEnt" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                    <cc1:AutoCompleteExtender ID="TxtEnt_AutoCompleteExtender" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_pj_cad" TargetControlID="TxtEnt">
                    </cc1:AutoCompleteExtender>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Dt.
                    Fundação</td>
                <td style="width: 222px" >
                    <input type="text" class="datepicker" id="TxtFundacao" runat="server"/></td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    Site</td>
                <td style="width: 230px" >
                    <asp:TextBox ID="TxtSite" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Potência</td>
                <td style="width: 222px" >
                    <asp:TextBox ID="TxtPot" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    Freqüência</td>
                <td style="width: 230px" >
                    <asp:TextBox ID="TxtFreq" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Tipo mídia</td>
                <td style="width: 222px" >
                    <asp:DropDownList ID="CboTipoMedia" runat="server"  Width="210px">
                    </asp:DropDownList>
                </td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    &nbsp;</td>
                <td style="width: 230px" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    &nbsp;</td>
                <td style="width: 222px" >
                    &nbsp;&nbsp;</td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    &nbsp;</td>
                <td style="width: 230px" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" style="color: #0066FF" >
                    <strong>Lista de emails</strong></td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td colspan="2" style="color: #0066FF"  >
                    <strong>Lista de telefones</strong></td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Email</td>
                <td style="width: 222px" >
                    <asp:TextBox ID="TxtEmail" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    Telefone</td>
                <td style="width: 230px" >
                    <asp:TextBox ID="TxtTel" runat="server"  
                    mask="(99) 9999-99999" MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="200px"></asp:TextBox>
                </td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Cargo</td>
                <td style="width: 222px" >
                    <asp:TextBox ID="TxtCargo" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    Tipo</td>
                <td style="width: 230px" >
                    <asp:DropDownList ID="CboTeltipo" runat="server" AutoPostBack="True" Width="210px">
                        <asp:ListItem>Celular</asp:ListItem>
                        <asp:ListItem>Residencial</asp:ListItem>
                        <asp:ListItem>Comercial</asp:ListItem>
                        <asp:ListItem>FAX</asp:ListItem>
                        <asp:ListItem>Outro</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    &nbsp;</td>
                <td style="width: 222px" >
                        <asp:Button ID="BtnInsEmail" runat="server" CssClass="blueBSmall" 
                            onclick="BtnInsEmail_Click" Text="Inserir email" />
                </td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    &nbsp;</td>
                <td style="width: 230px" >
                        <asp:Button ID="BtnInsTel" runat="server" CssClass="blueBSmall" 
                            onclick="BtnInsTel_Click" Text="Inserir telefone" />
                </td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" >
                    <asp:Repeater ID="repEmail" OnItemCommand="repEmail_Delete" runat="server">
                        <HeaderTemplate>
                            <table style="width: 305px; min-width: 305px;" border="0" cellspacing="0" cellpadding="2">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr valign="top" align="left">
                                <td valign="top" align="left">
                                    <b><asp:Label ID="lblInd" runat="server" Text="<%# Container.DataItem %>"></asp:Label></b>
                                </td>
                                <td valign="top" align="right">
                                    <asp:LinkButton ID="lkbRemoverInd" CommandArgument="delete" CommandName="repEmail_Delete"
                                        runat="server">Remover</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></tbody></table></FooterTemplate>
                    </asp:Repeater>
                    <asp:Literal ID="LitEma" runat="server"></asp:Literal>
                </td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    <asp:Repeater ID="repTel" OnItemCommand="repTel_Delete" runat="server">
                        <HeaderTemplate>
                            <table style="width: 305px; min-width: 305px;" border="0" cellspacing="0" cellpadding="2">
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr valign="top" align="left">
                                <td valign="top" align="left">
                                    <b><asp:Label ID="lblInd0" runat="server" Text="<%# Container.DataItem %>"></asp:Label></b>
                                </td>
                                <td valign="top" align="right">
                                    <asp:LinkButton ID="lkbRemoverInd0" CommandArgument="delete" CommandName="repTel_Delete"
                                        runat="server">Remover</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></tbody></table></FooterTemplate>
                    </asp:Repeater>
                    <asp:Literal ID="LitTel" runat="server"></asp:Literal>
                </td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" >
                    &nbsp;</td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" style="color: #0066FF" >
                    <b>Abrangência de sinal por regiões</b></td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td colspan="2" style="color: #0066FF" >
                    <strong>Municípios em abrangência</strong></td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" valign="top">

                    <table>
                    <tr>
                    <td>
                    <asp:CheckBox ID="ChkEstado" runat="server" 
                        Text="Abrangência de todo o estado" AutoPostBack="True" 
                        oncheckedchanged="ChkEstado_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                    <td>
                    <asp:CheckBox ID="ChkPorMuni" runat="server" 
                        Text="Por municípios" AutoPostBack="True" 
                        oncheckedchanged="ChkPorMuni_CheckedChanged" />
                    </td>
                    </tr>
                    </table>
                </td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                <asp:DropDownList ID="CboEstNovo" runat="server" AutoPostBack="True"  Width="210px" 
                     onselectedindexchanged="CboEstNovo_SelectedIndexChanged">
                </asp:DropDownList>
                </td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" valign="top">

                    &nbsp;&nbsp;</td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" valign="top" style="color: #0066FF">

                    <b>Lista de regiões disponíveis</b></td>
                <td style="width: 28px; vertical-align: middle;" >
                    <b></b></td>
                <td  colspan="2" style="color: #0066FF" >
                    <b>Municípios disponíveis</b></td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
             <tr>
                <td style="width: 16px;" ></td>
                <td colspan="2" valign="top" >
                    <asp:Panel ID="pnlRegiao" runat="server" Height="120px" ScrollBars="Vertical">
                        <asp:CheckBoxList ID="ChkRegiao" runat="server" Height="80px" 
                            onselectedindexchanged="ChkRegiao_SelectedIndexChanged" 
                            AutoPostBack="True"></asp:CheckBoxList></asp:Panel>
                    <asp:Literal ID="LitRegiao" runat="server"></asp:Literal>
                </td>
                <td style="width: 28px; vertical-align: middle;"></td>
                <td colspan="2" valign="top" >
                    <asp:Panel ID="pnlMuni" runat="server" Height="120px" ScrollBars="Vertical"><asp:CheckBoxList ID="ChkMuni" runat="server" Height="80px"></asp:CheckBoxList></asp:Panel>
                    <asp:Literal ID="LitMuni" runat="server"></asp:Literal>
                </td>
                <td style="width: 29px;"></td>
                <td style="width: 19px;"></td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" >
                    &nbsp;</td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" style="color: #0066FF" >
                    <b>Grupos de atividade econômica</b></td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" style="color: #0066FF" >
                    <b>Ramos de atividade econômica</b></td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px;" ></td>
                <td colspan="2" valign="top" >
                    <asp:Panel ID="pnlGrupo" runat="server" Height="120px" ScrollBars="Vertical"><asp:CheckBoxList ID="ChkGrupo" runat="server" Height="80px"></asp:CheckBoxList></asp:Panel>
                    <asp:Literal ID="LitGrupo" runat="server"></asp:Literal>
                </td>
                <td style="width: 28px; vertical-align: middle;"></td>
                <td colspan="2" valign="top" >
                    <asp:Panel ID="pnlRamo" runat="server" Height="120px" ScrollBars="Vertical"><asp:CheckBoxList ID="ChkRamo" runat="server" Height="80px"></asp:CheckBoxList></asp:Panel>
                    <asp:Literal ID="LitRamo" runat="server"></asp:Literal>
                </td>
                <td style="width: 29px;"></td>
                <td style="width: 19px;"></td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" >
                    &nbsp;</td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" >
                        <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                            onclick="BtnSalvar_Click" Text="Salvar" />
                    </td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" >
                    &nbsp;</td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="2" >
                    <b>Programas de comunicação</b></td>
                <td style="width: 28px; vertical-align: middle;" >
                    &nbsp;</td>
                <td  colspan="2" >
                    &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Assunto</td>
                <td style="width: 222px" >
                    <asp:DropDownList ID="CboAssunto" runat="server"  Width="210px">
                    </asp:DropDownList>
                </td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    Programa</td>
                <td style="width: 230px" >
                    <asp:DropDownList ID="CboTipoProg" runat="server"  Width="210px">
                    </asp:DropDownList>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Período</td>
                <td style="width: 222px" >
                    <asp:DropDownList ID="CboPer" runat="server"  Width="210px">
                        <asp:ListItem>(Selecione)</asp:ListItem>
                        <asp:ListItem>Manhã</asp:ListItem>
                        <asp:ListItem>Tarde</asp:ListItem>
                        <asp:ListItem>Noite</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    Hora</td>
                <td style="width: 230px" >
                    <asp:TextBox ID="TxtHora" runat="server"  
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    Pessoa</td>
                <td style="width: 222px" >
                    <asp:TextBox ID="TxtPessoa" runat="server"  MaxLength="150" 
                            OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                            OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
                            CompletionListCssClass="autocomplete_completionListElement" 
                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                            CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                            ServiceMethod="Autocomplete_participante" TargetControlID="TxtPessoa">
                        </cc1:AutoCompleteExtender>
                </td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    Obs</td>
                <td style="width: 230px" >
                    <asp:TextBox ID="TxtObs" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td style="width: 75px" >
                    &nbsp;</td>
                <td style="width: 222px" >
                    &nbsp;</td>
                <td style="width: 28px" >
                    &nbsp;</td>
                <td style="width: 83px"  >
                    &nbsp;</td>
                <td style="width: 230px" >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="5" >
                        <asp:Button ID="BtnSalvarProg" runat="server" CssClass="blueB" 
                            onclick="BtnSalvarProg_Click" Text="Salvar Programa" />
                </td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="5" >
                    <asp:Literal ID="LitProgs" runat="server"></asp:Literal>
                </td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 16px" >
                    &nbsp;</td>
                <td colspan="5" >
                        &nbsp;</td>
                <td style="width: 29px; vertical-align: middle;" >
                    &nbsp;</td>
                <td style="width: 19px">
                    &nbsp;</td>
            </tr>
                </table>
        </div>
    </fieldset>
</asp:Content>
