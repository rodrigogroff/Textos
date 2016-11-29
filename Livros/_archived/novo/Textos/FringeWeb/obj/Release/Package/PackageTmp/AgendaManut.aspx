<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AgendaManut.aspx.cs" Inherits="MVApp.AgendaManut" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Agendamento</h6></div>
            <table id="mainTbl" width="1050px">

            <tr>
            <td style="width: 400px" >
            
            <table id="Table1" width='400px'>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                &nbsp;</td>
            <td colspan="2" >
                <asp:LinkButton ID="LnkCid1" runat="server" onclick="LnkCid1_Click"></asp:LinkButton>
&nbsp;<asp:LinkButton ID="LnkCid2" runat="server" onclick="LnkCid2_Click"></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                Estado</td>
            <td style="width: 231px" >
                <asp:DropDownList ID="CboEstAtiv" runat="server" AutoPostBack="True"  Width="210px"
                     onselectedindexchanged="CboEstAtiv_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 22px" class="navigation_button" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                Município</td>
            <td style="width: 231px" >
                <asp:DropDownList ID="CboMuniAtiv" runat="server" Width="210px">
                </asp:DropDownList>
            </td>
            <td style="width: 22px" class="navigation_button" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                &nbsp;</td>
            <td style="width: 231px" >
                &nbsp;</td>
            <td style="width: 22px" class="navigation_button" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                Dt. inicial</td>
            <td colspan="2" >
                <input type="text" class="datepicker" id="TxtDtIni" runat="server"/>
            </td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                Hora inicial</td>
            <td colspan="2" >
                <asp:TextBox ID="TxtHora" runat="server"  
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
            </td>
        </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td style="width: 109px">
                        Dt. final</td>
                    <td colspan="2">
                <input type="text" class="datepicker" id="TxtDtFim" runat="server" /></td>
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td style="width: 109px">
                        Hora final</td>
                    <td colspan="2">
                <asp:TextBox ID="TxtHoraFIm" runat="server"  mask="99:99" 
                    MaxLength="5" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td style="width: 109px">
                        Feira</td>
                    <td colspan="2">
                        <asp:TextBox ID="TxtFeira" runat="server"  MaxLength="150" 
                            OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                            OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                        <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
                            CompletionListCssClass="autocomplete_completionListElement" 
                            CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                            CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                            ServiceMethod="Autocomplete_evento" TargetControlID="TxtFeira">
                        </cc1:AutoCompleteExtender>
                    </td>
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td style="width: 109px">
                        Assunto</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td colspan="3">
                <asp:TextBox ID="TxtAssunto" runat="server"  Height="98px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td style="width: 109px">
                        Veiculo</td>
                    <td colspan="2">
                            &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td colspan="3">
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
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td style="width: 109px">
                        Participantes</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td colspan="3">
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
                </tr>
                <tr>
                    <td style="width: 7px">
                        &nbsp;</td>
                    <td colspan="2">
                <asp:Button ID="BtnIns" runat="server" CssClass="blueB" 
                    onclick="BtnIns_Click" Text="Inserir na agenda" /> </td>
                    <td style="width: 22px" class="navigation_button">
                        &nbsp;</td>
                </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td colspan="3" >
                <asp:Repeater ID="repCliente" OnItemCommand="repCliente_Delete" runat="server">
                    <HeaderTemplate>
                        <table style="width: 100%; min-width: 100%;" border="0" cellspacing="0" cellpadding="2">
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr valign="top" align="left">
                            <td valign="top" align="left">
                                <b><asp:Label ID="lblCliente" runat="server" Text="<%# Container.DataItem %>"></asp:Label></b>
                            </td>
                            <td valign="top" align="right">
                                <asp:LinkButton ID="lkbRemoverCliente" CommandArgument="delete" CommandName="repCliente_Delete"
                                    runat="server">Remover</asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate></tbody></table></FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                Tipo</td>
            <td style="width: 231px" >
                <asp:DropDownList ID="CboTipo" runat="server" Width="210px">
                </asp:DropDownList>
            </td>
            <td style="width: 22px" class="navigation_button" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                Resultado</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td colspan="3" >
                <asp:TextBox ID="TxtResultado" runat="server"  Height="98px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td colspan="3" >
                <asp:CheckBox ID="ChkAtend" runat="server" Text="Participação efetiva" />
            </td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 7px" >
                &nbsp;</td>
            <td style="width: 109px" >
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 231px" >
                &nbsp;</td>
            <td style="width: 22px" class="navigation_button" >
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top" style="width: 7px" >
                &nbsp;</td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td valign="top" style="width: 22px">
                &nbsp;</td>
        </tr>
    </table>
            
            </td>
            
            <td valign="top">
            
            <table id="Table2" width="620px">
            
        <tr>
            <td style="width: 134px"   >
                
                &nbsp;</td>
            <td style="width: 109px"   >
                
                &nbsp;</td>
            <td   >
                &nbsp;</td>
            <td   >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 134px"   >
                
                <strong>Consulta agenda do dia</strong></td>
            <td style="width: 109px"   >
                
                <input type="text" class="datepicker" id="TxtDtPesq" runat="server"/></td>
            <td   >
                &nbsp;</td>
            <td   >
                <asp:Button ID="BtnPesq" runat="server" Text="&gt;" CssClass="blueB" />
            </td>
        </tr>

        <tr>
            <td colspan="4" >
                <asp:Literal  ID="LitAg" runat="server"></asp:Literal>

            </td>
        </tr>
        </table>
                
                &nbsp;</td>

            </tr>
            </table>
        </div>
    </fieldset>
</form>

</asp:Content>
