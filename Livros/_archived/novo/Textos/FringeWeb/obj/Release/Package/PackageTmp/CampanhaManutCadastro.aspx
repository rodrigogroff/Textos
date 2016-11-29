<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CampanhaManutCadastro.aspx.cs" Inherits="MVApp.CampanhaManutCadastro" %>

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

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>
                Contatos de campanha</h6></div>
            <table id="mainTbl" width="850px">
            <tr>
            <td style="width: 25px;">
                &nbsp;</td>
            <td style="width: 94px;">
                &nbsp;</td>
            <td style="width: 266px;">
                                    &nbsp;</td>
            <td style="width: 20px;">
                                    &nbsp;</td>
            <td style="width: 206px;">
                                    &nbsp;</td>
            <td style="width: 30px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px;">
                &nbsp;</td>
            <td style="width: 94px;">
                Campanha</td>
            <td style="width: 266px;">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" Enabled="False"></asp:TextBox>
            </td>
            <td style="width: 20px;">
                                    &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px;">
                &nbsp;</td>
            <td style="width: 94px;">
                <strong>Cadastro atual</strong></td>
            <td style="width: 266px;">
                                    <asp:TextBox ID="TxtCad" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" Enabled="False"></asp:TextBox>
            </td>
            <td style="width: 20px;">
                                    &nbsp;</td>
            <td colspan="2">
                <asp:Literal ID="LitFicha" runat="server"></asp:Literal>
                </td>
            </tr>
                <tr>
                    <td style="width: 25px;">
                        &nbsp;</td>
                    <td colspan="2">
                        <br />
                        <asp:CheckBox ID="ChkFichaAtu" runat="server" 
                            Text="Dados cadastrais foram atualizados durante o contato" 
                            ForeColor="#3399FF" />
                        <br />
                        <br />
                    </td>
                    <td style="width: 20px;">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25px;">
                        &nbsp;</td>
                    <td colspan="2">
                                <asp:Button ID="BtnContatoFeito" runat="server" Text="Contato feito" CssClass="blueB" 
                                    onclick="BtnContatoFeito_Click" /></td>
                    <td style="width: 20px;">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25px;">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                    <td style="width: 20px;">
                        &nbsp;</td>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td colspan="4">
                <asp:HiddenField ID="HFCurrTabIndex" runat="server" Value="0" />

                <div id="tabContainer" class="tabs">
                <ul>
                    <li><a href="#tabs-4">Apoios<asp:Literal ID="LitTotAp" runat="server"></asp:Literal></a></li>
                    <li><a href="#tabs-5">Colaborações<asp:Literal ID="LitTotColabs" runat="server"></asp:Literal></a></li>
                    <li><a href="#tabs-6">Materiais<asp:Literal ID="LitTotMat" runat="server"></asp:Literal></a></li>
                    <li><a href="#tabs-7">Contatos<asp:Literal ID="LitTotConts" runat="server"></asp:Literal></a></li>
                    <li><a href="#tabs-8">Custeios<asp:Literal ID="LitTotCusteios" runat="server"></asp:Literal></a></li>
                </ul>
                <div id="tabs-4">
                    <table id='apoio'> 
                        <tr>
                            <td style="width: 55px" ></td>
                            <td style="width: 486px"></td>
                        </tr> 
                        <tr>
                            <td style="width: 55px" >Cargo</td>
                            <td style="width: 486px">
                            <asp:DropDownList ID="CboCargo" runat="server" Width="210px"></asp:DropDownList>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 55px" >Opção</td>
                            <td style="width: 486px">
                                <asp:DropDownList ID="CboPrm" runat="server" Width="210px">
                                    <asp:ListItem>Primeira opção</asp:ListItem>
                                    <asp:ListItem>Segunda opção</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 55px" ></td>
                            <td style="width: 486px">
                                &nbsp;</td>
                        </tr> 
                        <tr>
                            <td style="width: 55px" >Nome</td>
                            <td style="width: 486px">
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
                        </tr> 
                        <tr>
                            <td style="width: 55px" >Votos</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtVotos" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 55px" >Ano</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtAno" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 55px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="BtnInsApoio" runat="server" Text="Inserir" CssClass="blueB" 
                                    onclick="BtnInsApoio_Click" /></td>
                        </tr> 
                        <tr>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2">
                                <asp:Literal ID="LitApoio" runat="server"></asp:Literal>
                            </td>
                        </tr> 
                    </table>
                </div>
                <div id="tabs-5">
                    
                    <table id='Table1'> 
                        <tr>
                            <td style="width: 90px" ></td>
                            <td style="width: 486px"></td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Colaboração</td>
                            <td style="width: 486px">
                            <asp:DropDownList ID="CboColab" runat="server" Width="210px"></asp:DropDownList>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Observação</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtColabCompl" runat="server"  
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                                    MaxLength="200" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Ano</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtAnoColab" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Button ID="BtnInsColab" runat="server" Text="Inserir" CssClass="blueB" 
                                    onclick="BtnInsColab_Click" /></td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Literal ID="LitColabs" runat="server"></asp:Literal>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                    </table>

                </div>
                <div id="tabs-6">
                    
                     <table id='Table3'> 
                        <tr>
                            <td style="width: 90px" ></td>
                            <td style="width: 486px"></td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Material</td>
                            <td style="width: 486px">
                            <asp:DropDownList ID="CboMat" runat="server" Width="210px"></asp:DropDownList>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Qtd. Solicitado</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtMatSol" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Ano</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtAnoMat" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Button ID="BtnInsMat" runat="server" Text="Inserir" CssClass="blueB" 
                                    onclick="BtnInsMat_Click" /></td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Literal ID="LitMats" runat="server"></asp:Literal>
                            </td>
                        </tr> 
                     </table>

                </div>
                <div id="tabs-7">

                    <table id='Table2'> 
                        <tr>
                            <td style="width: 90px" ></td>
                            <td style="width: 486px"></td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Ano</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtAnoCont" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 90px" >Texto</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtContTexto" runat="server"  
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                                    MaxLength="2000" Height="93px" TextMode="MultiLine" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td colspan="2" >&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Button ID="BtnInsCont" runat="server" Text="Inserir" CssClass="blueB" 
                                    onclick="BtnInsCont_Click" /></td>
                        </tr> 
                        <tr>
                            <td colspan="2" >&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Literal ID="LitConts" runat="server"></asp:Literal>
                            </td>
                        </tr> 
                    </table>
                </div>

                <div id="tabs-8">
                    <table id='Table4'> 
                        <tr>
                            <td style="width: 104px" ></td>
                            <td style="width: 486px"></td>
                        </tr> 
                        <tr>
                            <td style="width: 104px" >Ano</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtAnoCusteio" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 104px" >Valor</td>
                            <td style="width: 486px">

                                <asp:TextBox ID="TxtValorCust" runat="server"  
                                 MaxLength="20" onkeypress="return formataMoeda( this, event );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 104px" >Estado</td>
                            <td style="width: 486px">

                <asp:DropDownList ID="CboEstNovo" runat="server" AutoPostBack="True" Width="210px" 
                     onselectedindexchanged="CboEstNovo_SelectedIndexChanged">
                </asp:DropDownList>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 104px" >&nbsp;</td>
                            <td style="width: 486px">

                                &nbsp;</td>
                        </tr> 
                        <tr>
                            <td style="width: 104px" >Municípios</td>
                            <td style="width: 486px">
                                <asp:Panel ID="PnlMunis" runat="server" height="120px" ScrollBars="Vertical">
                                    <asp:CheckBoxList ID="ChkMuni" runat="server"></asp:CheckBoxList>
                                </asp:Panel>
                            </td>
                        </tr> 
                        <tr>
                            <td style="width: 104px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Button ID="BtnInsCusteio" runat="server" Text="Inserir" CssClass="blueB" 
                                    onclick="BtnInsCusteio_Click" /></td>
                        </tr> 
                        <tr>
                            <td style="width: 104px" >&nbsp;</td>
                            <td style="width: 486px">&nbsp;</td>
                        </tr> 
                        <tr>
                            <td colspan="2" >
                                <asp:Literal ID="LitCusteio" runat="server"></asp:Literal>
                            </td>
                        </tr> 
                    </table>
                </div>

            </div></td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</asp:Content>
