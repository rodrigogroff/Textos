<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MunicipioManut.aspx.cs" Inherits="MVApp.MunicipioManut" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados do município</h6></div>
            <table id="mainTbl" width="750px">
            <tr>
            <td style="width: 24px" rowspan="47" valign="top">
                &nbsp;</td>
            <td style="width: 88px;">
                &nbsp;</td>
            <td style="width: 341px;">
                                    &nbsp;</td>
            <td style="width: 27px;">
                                    &nbsp;</td>
            <td style="width: 88px;">
                                    &nbsp;</td>
            <td style="width: 340px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px;">
                Pais</td>
            <td colspan="4">
                <asp:DropDownList ID="CboPais" runat="server" Width="210px" AutoPostBack="true"
                    onselectedindexchanged="CboPais_SelectedIndexChanged"></asp:DropDownList>
            </td>
            </tr>
            <tr>
            <td style="width: 88px;">
                Estado</td>
            <td colspan="4">
                <asp:DropDownList ID="CboEstNovo" runat="server" Width="210px"></asp:DropDownList>
            </td>
            </tr>
            <tr>
            <td style="width: 88px;">
                &nbsp;</td>
            <td colspan="4">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px;">
                Nome</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="width: 88px;">
                Eleitores</td>
            <td style="width: 341px;">
                                    <asp:TextBox ID="TxtEleit" runat="server" mask="999999999999" onkeypress="return formataCampos( event,this );"
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 27px;">
                                    &nbsp;</td>
            <td style="width: 88px;">
                                    População</td>
            <td style="width: 340px;">
                                    <asp:TextBox ID="TxtPop" runat="server" mask="999999999999" onkeypress="return formataCampos( event,this );"
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="width: 88px">
                PIB 
                (R$)</td>
            <td style="width: 341px">
                                    <asp:TextBox ID="TxtPib" runat="server" onkeypress="return formataMoeda( this,event );"
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                Dist. capital</td>
            <td style="width: 340px">
                                    <asp:TextBox ID="TxtDistCap" runat="server" mask="99999" onkeypress="return formataCampos( event,this );"
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Emancipação</td>
            <td style="width: 341px">
                <input type="text" class="datepicker" id="TxtDtEma" runat="server"/></td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                <asp:Button ID="BtnImp" runat="server" CssClass="blueB" Text="Imprimir" 
                    onclick="BtnImp_Click" style="text-align: right" />
                </td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 341px">
                                    &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px; color: #0066CC;">
                <strong>Associação</strong></td>
            <td style="width: 341px">
                                    &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Nome</td>
            <td style="width: 341px">
                                    <asp:TextBox ID="TxtAssoc" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                Site</td>
            <td style="width: 340px">
                                    <asp:TextBox ID="TxtSite" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Telefone</td>
            <td style="width: 341px">
                <asp:TextBox ID="TxtTel" runat="server"  
                    mask="(99) 9999-99999" MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                Fax</td>
            <td style="width: 340px">
                <asp:TextBox ID="TxtFax" runat="server"  
                    mask="(99) 9999-99999" MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                CEP</td>
            <td style="width: 341px">
                <asp:TextBox ID="TxtCEP" runat="server"  
                    mask="99999-999" MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                CNPJ</td>
            <td style="width: 340px">
                <asp:TextBox ID="TxtCNPJ" runat="server"  
                    mask="99.999.999/9999-99" MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Endereço</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtEndAssoc" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Valor 
                (R$)</td>
            <td style="width: 341px">
                <asp:TextBox ID="TxtValor" runat="server"  MaxLength="20" onkeypress="return formataMoeda( this, event );"
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px; color: #0066FF;">
                <strong>Endereços</strong></td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Prefeitura</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtPref" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Câmara</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtCam" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px; color: #0066FF;">
                <strong>Bolsa escola</strong></td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Famílias</td>
            <td style="width: 341px">
                                    <asp:TextBox ID="TxtBS_Fam" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                Filhos</td>
            <td style="width: 340px">
                                    <asp:TextBox ID="TxtBS_Filhos" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px; color: #0066FF;">
                <strong>Atividades</strong></td>
            <td colspan="4">

                <asp:Panel ID="Panel1" runat="server" Height="120px" ScrollBars="Vertical" >
                
                <asp:CheckBoxList ID="ChkRamo" runat="server">
                </asp:CheckBoxList>

                </asp:Panel>

            </td>
            </tr>
            <tr>
            <td colspan="5">
                <asp:Literal ID="LitVotos" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
            <td colspan="2" style="color: #0066FF">
                <strong>Nova contagem de votos do gabinete</strong></td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Ano</td>
            <td style="width: 341px">
                                    <asp:TextBox ID="TxtVotoAno" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                Votos</td>
            <td style="width: 340px">
                                    <asp:TextBox ID="TxtVotosQtd" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                <asp:Button ID="BtnInsVotos" runat="server" CssClass="blueB" Text="Inserir" 
                    onclick="BtnInsVotos_Click" style="text-align: right" />
                </td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td colspan="5">
                <asp:Literal ID="LitDep" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
            <td colspan="2" style="color: #0066FF">
                <strong>Nova contagem por deputado</strong></td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Nome</td>
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
            </tr>
            <tr>
            <td style="width: 88px">
                Ano</td>
            <td style="width: 341px">
                                    <asp:TextBox ID="TxtDepAno" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                Votos</td>
            <td style="width: 340px">
                                    <asp:TextBox ID="TxtDepVotos" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Esfera</td>
            <td style="width: 341px">
                <asp:DropDownList ID="CboTipoDep" runat="server" Width="210px">
                    <asp:ListItem>Estadual</asp:ListItem>
                    <asp:ListItem>Federal</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                Partido</td>
            <td style="width: 340px">
                <asp:DropDownList ID="CboPart" runat="server" Width="210px">
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                <asp:Button ID="BtnInsDep" runat="server" CssClass="blueB" Text="Inserir" 
                    onclick="BtnInsDep_Click" style="text-align: right" />
                </td>
            <td style="width: 341px">
                                    &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Histórico</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtHist" runat="server" 
                    MaxLength="600"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Height="120px" TextMode="MultiLine"></asp:TextBox>
                <br />
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Habitação</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtHab" runat="server" 
                    MaxLength="600"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Height="120px" TextMode="MultiLine"></asp:TextBox>
                <br />
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Saneamento</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtSan" runat="server" 
                    MaxLength="600"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Height="120px" TextMode="MultiLine"></asp:TextBox>
                <br />
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Reg. Fundiária</td>
            <td colspan="4">
                                    <asp:TextBox ID="TxtRegFund" runat="server" 
                    MaxLength="600"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Height="120px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="color: #0066FF;" colspan="2">
                <strong>Visitas ao município</strong></td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td colspan="2">
                <asp:CheckBoxList ID="ChkVisitas" runat="server">
                </asp:CheckBoxList>
                <asp:Literal ID="LitVis" runat="server"></asp:Literal>
                </td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td colspan="5">
                <asp:Literal ID="LitCusteio" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
            <td style="color: #0066FF;" colspan="2">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                <asp:Button ID="BtnUpdate" runat="server" CssClass="blueB" Text="Salvar" 
                    onclick="BtnUpdate_Click" style="text-align: right" />
                </td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 27px">
                &nbsp;</td>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 340px">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</asp:Content>

