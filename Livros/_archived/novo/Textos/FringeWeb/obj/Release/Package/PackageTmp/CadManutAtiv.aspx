<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadManutAtiv.aspx.cs" Inherits="MVApp.CadManutAtiv" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Histórico de atividades 
                <asp:Literal ID="LitCodAtiv" runat="server"></asp:Literal></h6></div>
            <table id="mainTbl">
<tr>
<td valign="middle" class="style2" colspan="2">
    
    <table style="width: 768px">
        <tr>
            <td style="width: 23px; ">
            </td>
            <td style="width: 107px; ">
            </td>
            <td style="width: 214px; " valign="top">
            </td>
            <td style="width: 23px; " valign="middle">
                &nbsp;</td>
            <td style="width: 96px; " valign="middle">
            </td>
            <td style="width: 186px; " valign="middle">
            </td>
            <td style="width: 23px" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 107px">
                <strong>Nome</strong></td>
            <td style="width: 214px" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 23px" valign="middle">
                &nbsp;</td>
            <td style="width: 96px" valign="middle" class="navigation_button">
                <strong>Apelido</strong></td>
            <td style="width: 186px" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    ReadOnly="True" ></asp:TextBox>
            </td>
            <td valign="top" style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" rowspan="14" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 107px">
                &nbsp;</td>
            <td style="width: 214px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
            <td style="width: 96px" class="navigation_button">
                &nbsp;</td>
            <td style="width: 186px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">
                Inicio período<br />
                (dd/mm) (aaaa)</td>
            <td style="width: 214px">
                <asp:TextBox ID="TxtDtDiaMesIni" runat="server"  mask="99/99" 
                    MaxLength="5" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="79px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtDtAnoIni" runat="server"  mask="9999" 
                    MaxLength="5" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="79px"></asp:TextBox>
            &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
            <td style="width: 96px" class="navigation_button">
                Fim período<br />
                (dd/mm) (aaaa)</td>
            <td style="width: 186px">
                <asp:TextBox ID="TxtDtDiaMesFim" runat="server"  mask="99/99" 
                    MaxLength="5" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="79px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtDtAnoFim" runat="server"  mask="9999" 
                    MaxLength="5" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="79px"></asp:TextBox>
            </td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                <strong>Empresa</strong></td>
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
            <td style="width: 23px">
                </td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                &nbsp;</td>
            <td style="width: 214px; ">
                &nbsp;</td>
            <td style="width: 23px; ">
                &nbsp;</td>
            <td style="width: 96px; ">
                &nbsp;</td>
            <td style="width: 186px; ">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                Cargo</td>
            <td style="width: 214px; ">
                <asp:DropDownList ID="CboCargo" runat="server" Width="210px">
                </asp:DropDownList>
            </td>
            <td style="width: 23px; ">
                &nbsp;</td>
            <td style="width: 96px; ">
                Partido
            </td>
            <td style="width: 186px; ">
                <asp:DropDownList ID="CboPartNovo" runat="server"  Width="210px">
                </asp:DropDownList>
            </td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                Pais</td>
            <td style="width: 214px; ">
                <asp:DropDownList ID="CboPais" runat="server"  Width="210px" AutoPostBack="true" onselectedindexchanged="CboPais_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 23px; ">
                &nbsp;</td>
            <td style="width: 96px; ">
                &nbsp;</td>
            <td style="width: 186px; ">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                Estado </td>
            <td style="width: 214px; ">
                <asp:DropDownList ID="CboEstAtiv" runat="server" AutoPostBack="True"  Width="210px"
                     onselectedindexchanged="CboEstAtiv_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 23px; ">
                &nbsp;</td>
            <td style="width: 96px; ">
                Municipio</td>
            <td style="width: 186px; ">
                <asp:DropDownList ID="CboMuniAtiv" runat="server"  Width="210px">
                </asp:DropDownList>
            </td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                &nbsp;</td>
            <td style="width: 214px; ">
                &nbsp;</td>
            <td style="width: 23px; ">
                &nbsp;</td>
            <td style="width: 96px; ">
                &nbsp;</td>
            <td style="width: 186px; ">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px; ">
                Departamento</td>
            <td style="width: 214px; ">
                <asp:TextBox ID="TxtDepto" runat="server"  MaxLength="60" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 23px; ">
                &nbsp;</td>
            <td style="width: 96px; ">
                Votos</td>
            <td style="width: 186px; ">
                <asp:TextBox ID="TxtVotos" runat="server"  MaxLength="6" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';">0</asp:TextBox>
            </td>
            <td style="width: 23px">
                </td>
        </tr>
        <tr>
            <td style="width: 107px">
                Setor</td>
            <td style="width: 214px">
                <asp:TextBox ID="TxtSetor" runat="server"  MaxLength="60" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 23px">
                &nbsp;</td>
            <td style="width: 96px" class="navigation_button">
                CEP</td>
            <td style="width: 186px">
                <asp:TextBox ID="TxtCep" runat="server"  MaxLength="12" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">
                &nbsp;</td>
            <td style="width: 214px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
            <td style="width: 96px" class="navigation_button">
                &nbsp;</td>
            <td style="width: 186px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 214px">
                        <asp:Button ID="BtnLimp" runat="server" CssClass="blueB" 
                            onclick="BtnLimp_Click" Text="Limpar campos" />
                    </td>
            <td style="width: 23px">
                &nbsp;</td>
            <td style="width: 96px" class="navigation_button">
                &nbsp;</td>
            <td style="width: 186px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 107px">
                &nbsp;</td>
            <td style="width: 214px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
            <td style="width: 96px" class="navigation_button">
                &nbsp;</td>
            <td style="width: 186px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td colspan="5" valign="top">
                <asp:Literal  ID="LitAtiv" runat="server" Text="<span style='Color:Red'>-Nenhum registro disponível;</span>"></asp:Literal>
                
                <br />
                
            </td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td colspan="5" valign="top">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
    </table>
    </td>

    <tr>
        <td valign="top" class="style2" style="width: 388px">
            </td>
        <td style="width: 23px" valign="middle">
            &nbsp;</td>
    </tr>

    <tr>
        <td valign="top">
            &nbsp;</td>
    </tr>
    </tr>

    </table>
</div>
</fieldset>
</form>

</asp:Content>


