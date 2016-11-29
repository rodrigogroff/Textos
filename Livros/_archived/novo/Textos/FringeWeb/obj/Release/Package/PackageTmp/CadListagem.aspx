<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadListagem.aspx.cs" Inherits="MVApp.CadListagem" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<script type="text/javascript">
    $(function () {
        $("#tabContainer").tabs();
        var currTab = $("#<%= HFCurrTabIndex.ClientID %>").val();
        $("#tabContainer").tabs({ selected: currTab });
    });
</script>

<asp:Literal ID="LitExp" runat="server"></asp:Literal>
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa 
                em banco de dados</h6></div>

            <table id="Table2" width="1050px">
            <tr>
                <td>
                    <div id="tabContainer" class="tabs">
                        <asp:HiddenField ID="HFCurrTabIndex" runat="server" Value="0" />
                        <ul>
                            <li><a href="#tabs-1">Pessoal</a></li>
                            <li><a href="#tabs-5">Origem / Categorias</a></li>
                        </ul>
                        
                        <div id="tabs-1">
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
                        <td width='12px'></td>
                        <td style="width: 119px">Nome / apelido</td>
                        <td width='120px'>
                            <asp:TextBox ID="TxtNome" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                            </td>
                        <td style="width: 22px"></td>
                        <td width='90px'>Código</td>
                        <td width='120px'>
                            <asp:TextBox ID="TxtCodigo" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                            </td>
                        <td width='12px'></td>
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
                        <td style="width: 119px">Telefone</td>
                        <td width='120px'>
                            <asp:TextBox ID="TxtTelNovo" runat="server"  
                                mask="(99) 9999-99999" MaxLength="20" 
                                OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                                onkeypress="return formataCampos( event,this );"></asp:TextBox>
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>Email</td>
                        <td width='120px'>
                            <asp:TextBox ID="TxtEmail" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
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
                        <td style="width: 119px">Observação</td>
                        <td width='120px'>
                            <asp:TextBox ID="TxtObs" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>&nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">Sexo</td>
                        <td width='120px'>
                            <asp:DropDownList ID="CboTSexo" runat="server" Width="210px">
                                <asp:ListItem>(Selecione)</asp:ListItem>
                                <asp:ListItem>Feminino</asp:ListItem>
                                <asp:ListItem>Masculino</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>Tipo</td>
                        <td width='120px'>
                            <asp:DropDownList ID="CboTP" runat="server"  Width="210px">
                                <asp:ListItem>(Selecione)</asp:ListItem>
                                <asp:ListItem>Física</asp:ListItem>
                                <asp:ListItem>Jurídica</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">Partido</td>
                        <td width='120px'>
                            <asp:DropDownList ID="CboPart" runat="server" Width="210px"></asp:DropDownList>
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>Falecido</td>
                        <td width='120px'>
                            <asp:DropDownList ID="CboFalecido" runat="server" Width="210px">
                                <asp:ListItem>(Selecione)</asp:ListItem>
                                <asp:ListItem>Não</asp:ListItem>
                                <asp:ListItem>Sim</asp:ListItem>
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
                        <td style="width: 119px">País</td>
                        <td width='120px'>
                <asp:DropDownList ID="CboPais" runat="server"  Width="210px" AutoPostBack="true" onselectedindexchanged="CboPais_SelectedIndexChanged">
                </asp:DropDownList>
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>&nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
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
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td colspan="2">
                            <asp:CheckBox ID="ChkVisMuni" runat="server" 
                                Text="Somente cadastros com visita" />
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>&nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
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
                        <td style="width: 119px"><strong>Aniversários</strong></td>
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
                        <td style="width: 119px">Data inicial</td>
                        <td width='120px'>
                <input type="text" class="datepicker" id="TxtDtIniNiver" runat="server"/></td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>Data final</td>
                        <td width='120px'>
                <input type="text" class="datepicker" id="TxtDtIniNiverFim" runat="server"/></td>
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
                        <td style="width: 119px"><strong>Campanha</strong></td>
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
                        <td style="width: 119px">
                            <asp:CheckBox ID="ChkCampApo" runat="server" Text="Apoio" />
                            </td>
                        <td width='120px'>
                            <asp:CheckBox ID="ChkCampColab" runat="server" Text="Colaboração" />
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            <asp:CheckBox ID="ChkCampMaterial" runat="server" Text="Material" />
                            </td>
                        <td width='120px'>
                            <asp:CheckBox ID="ChkCampCusteio" runat="server" Text="Custeio" />
                            </td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            <strong>Comercial</strong></td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            Empresa</td>
                        <td colspan="4">
                            <asp:TextBox ID="TxtEmpresa" runat="server"  MaxLength="150" 
                        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                    <cc1:AutoCompleteExtender ID="TxtEnt_AutoCompleteExtender" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_pj_cad" TargetControlID="TxtEmpresa">
                    </cc1:AutoCompleteExtender>
                            </td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            Data inicial</td>
                        <td width='120px'>
                <input type="text" class="datepicker" id="TxtDtIni" runat="server"/></td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            Data final</td>
                        <td width='120px'>
                <input type="text" class="datepicker" id="TxtDtFim" runat="server" /></td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            Profissão</td>
                        <td width='120px'>
                            <asp:DropDownList ID="CboProf" runat="server" Width="210px"></asp:DropDownList>
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            Cargo</td>
                        <td width='120px'>
                            <asp:DropDownList ID="CboCargo" runat="server" Width="210px"></asp:DropDownList>
                            </td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td colspan="2">
                            <strong>Grupos econômicos<br />
                            <br />
                            </strong>                            

                            <asp:Panel ID="Panel3" runat="server" Height="160px" ScrollBars="Vertical">
                                <asp:CheckBoxList ID="ChkGrupo" runat="server">
                                </asp:CheckBoxList>
                            </asp:Panel>
                            
                            </td>
                        <td style="width: 22px">&nbsp;</td>
                        <td colspan="2">
                            <strong>Ramos de atividades<br />
                            <br />
                            </strong>
                            <asp:Panel ID="Panel4" runat="server" Height="160px" ScrollBars="Vertical">
                                <asp:CheckBoxList ID="ChkRamo" runat="server">
                                </asp:CheckBoxList>
                            </asp:Panel></td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td width='12px'>&nbsp;</td>
                        <td style="width: 119px">
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td style="width: 22px">&nbsp;</td>
                        <td width='90px'>
                            &nbsp;</td>
                        <td width='120px'>
                            &nbsp;</td>
                        <td width='12px'>&nbsp;</td>
                        </tr>
                        </table>
                        </div>
                       
                        <div id="tabs-5">
                        <table>
                        <tr>
                        <td width='12px'></td>
                        <td style="width: 329px">
                            Origens<br />
                            <br />
                            <asp:Panel ID="Panel2" runat="server" Height="160px" ScrollBars="Vertical">
                                <asp:CheckBoxList ID="ChkOrig" runat="server">
                                </asp:CheckBoxList>
                            </asp:Panel>
                        </td>
                        <td style="width: 24px"></td>
                        <td style="width: 295px" >
                        
                        Categorias<br />
                            <br />
                        <asp:Panel ID="Panel1" runat="server" Height="160px" ScrollBars="Vertical">
                            <asp:CheckBoxList ID="ChkCateg" runat="server">
                            </asp:CheckBoxList>
                        </asp:Panel>

                        </td>
                        </tr>

                        </table>

                        </div>

                    </div>
                </td>
            </tr>
            </table>
            
            <table id="mainTbl" width="950px">
            <tr>
                <td valign="top" style="width: 444px; vertical-align: top;">
                
                    <table class="tbl_new2" style="width: 926px" >
                    <tr>
                        <td style="width: 12px">&nbsp;</td>
                        <td colspan="2">
                            &nbsp;</td>
                        <td style="width: 205px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 12px">&nbsp;</td>
                        <td style="width: 434px"><asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" 
                                    onclick="BtnPesq_Click" />&nbsp;&nbsp;&nbsp; <asp:Button ID="BtnMail" 
                                runat="server" Text="Mail list" CssClass="blueB" 
                                    onclick="BtnMail_Click" />&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnImp" runat="server" Text="Imprimir" CssClass="blueB" 
                        onclick="BtnImp_Click" Enabled="False" />
                        &nbsp;&nbsp;&nbsp; 
                            <asp:Button ID="BtnExpArq" 
                                runat="server" Text="Excell" CssClass="blueB" 
                                    onclick="BtnExpArq_Click" Enabled="False" />
                        </td>
                        <td style="width: 169px"><asp:Literal  ID="LitTot" runat="server"></asp:Literal></td>
                        <td colspan="2">

                        <table>
                        <tr>
                        <td style="width: 166px">
                    <asp:Button ID="BtnLimparCampos" runat="server" Text="Limpar campos" CssClass="blueB" 
                        onclick="BtnLimparCampos_Click" />
                            </td>
                        <td ><asp:CheckBox ID="ChkFotos" runat="server" Text="Mostrar fotos" 
                                Visible="False" /></td>
                        </tr>
                        </table>
    
                        </td>
                    </tr>                       
                    <tr>
                        <td style="width: 12px">&nbsp;</td>
                        <td style="width: 434px">&nbsp;</td>
                        <td style="width: 169px">Ordenar por</td>
                        <td colspan="2">

                            <asp:DropDownList ID="CboOrder" runat="server" Width="210px">
                                <asp:ListItem>Mais novos</asp:ListItem>
                                <asp:ListItem>Mais antigos</asp:ListItem>
                                <asp:ListItem>Nome</asp:ListItem>
                                <asp:ListItem>Municipio</asp:ListItem>
                            </asp:DropDownList>
    
                        </td>
                    </tr>                       
                    <tr>
                        <td style="width: 12px">&nbsp;</td>
                        <td colspan="4"></td>
                    </tr>                       
                    <tr>
                        <td style="width: 12px">&nbsp;</td>
                        <td style="width: 434px">
                            &nbsp;</td>
                        <td style="width: 169px">&nbsp;</td>
                        <td colspan="2">

                            &nbsp;</td>
                    </tr>                       
                </table>
            </td>

        </tr>
            <tr>
                <td valign="top" style="vertical-align: top;">

                        <table id="Table1"><tr>
                        <td style="width: 12px">
                            &nbsp;</td><td style="width: 89px">
                                Campanha&nbsp;
                        &nbsp;
                        </td><td>
                    <asp:DropDownList ID="CboCamp" runat="server" Width="210px">
                    </asp:DropDownList>
                        </td>
                        
                        <td style="width: 31px">
                            &nbsp;</td>

                        <td>
                    <asp:Button ID="BtnExp" runat="server" Text="Exportar.." CssClass="blueB" 
                                onclick="BtnExp_Click" />
                        </td></tr></table>

                </td>
        </tr>
            <tr>
                <td valign="top" style="width: 444px; vertical-align: top;">
                
                    &nbsp;</td>

        </tr>
            <tr>
                <td valign="top" style="width: 444px; vertical-align: top;">
                
                    &nbsp;</td>

        </tr>
        </table>


        </div>
    </fieldset>       
    
</form>
</asp:Content>
