<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadManut.aspx.cs" Inherits="MVApp.CadManut" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  

<form action="" class="form">
<fieldset><div class="widget"><div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados cadastrais</h6></div>
<table id="mainTbl">
<tr>
<td valign="middle" class="style2">
    
    <table style="width: 1050px">
        <tr>
            <td style="width: 23px; ">
            </td>
            <td style="width: 140px; " valign="top">
                Foto</td>
            <td style="width: 341px; " valign="top">
                <asp:Literal  ID="LitFoto" runat="server"></asp:Literal>
                <br />
                <br />
                <asp:FileUpload ID="FileUploadFotoCapa" runat="server" />
                <br />
                <br />
            </td>
            <td style="width: 31px; " valign="middle">
                &nbsp;</td>
            <td style="width: 132px; " valign="middle">
            </td>
            <td style="width: 342px; " valign="top">
                <br />
                <br />
                <asp:Button ID="BtnImp" runat="server" CssClass="blueB" 
                    onclick="BtnImp_Click" Text="Imprimir ficha" />
                <br />
            </td>
            <td style="width: 10px; " valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 140px">
                Nome</td>
            <td style="width: 341px" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                    <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
                        CompletionListCssClass="autocomplete_completionListElement" 
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem" 
                        CompletionListItemCssClass="autocomplete_listItem" MinimumPrefixLength="3" 
                        ServiceMethod="Autocomplete_participante" TargetControlID="TxtNome">
                    </cc1:AutoCompleteExtender>
            </td>
            <td style="width: 31px" valign="middle">
                &nbsp;</td>
            <td style="width: 132px" valign="middle">
                Apelido</td>
            <td style="width: 342px" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ></asp:TextBox>
            </td>
            <td style="width: 10px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" rowspan="11" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 140px">
                RG</td>
            <td style="width: 341px">
                <asp:TextBox ID="TxtRg" runat="server"  MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 31px">
                &nbsp;</td>
            <td style="width: 132px">
                CPF / CNPJ</td>
            <td style="width: 342px">
                <asp:TextBox ID="TxtCnpj" runat="server"  MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px"></asp:TextBox>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                Dt. Nasc. / Ano</td>
            <td style="width: 341px">
                <asp:TextBox ID="TxtDtDiaMes" runat="server"  mask="99/99" 
                    MaxLength="5" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="79px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TxtDtAno" runat="server"  mask="9999" 
                    MaxLength="5" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="79px"></asp:TextBox>
            </td>
            <td style="width: 31px">
                &nbsp;</td>
            <td style="width: 132px">
                &nbsp;</td>
            <td style="width: 342px">
                <asp:CheckBox ID="ChkImp" runat="server" ForeColor="#0066FF" 
                    Text="Recebe acompanhamentos de imprensa" />
                <br />
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" valign="top">
                <asp:Literal  ID="LitAtiv" runat="server" Text="<br><span style='Color:Red'>-Nenhuma atividade disponível;</span><br>"></asp:Literal>
                <br /><asp:Button ID="BtnAtiv" runat="server" CssClass="blueB" onclick="BtnAtiv_Click" Text="Nova atividade" />
                </td>
            <td style="width: 31px">
                &nbsp;</td>
            <td colspan="2" valign="top">                
                <asp:Literal  ID="LitEnds" runat="server" Text="<span style='Color:Red'><br>-Nenhum endereço disponível;</span><br>"></asp:Literal>
                <br />
                <asp:Button ID="BtnEnd" runat="server" CssClass="blueB" onclick="BtnEnd_Click" Text="Novo endereço" />
                <br />
                <asp:Literal  ID="LitTels" runat="server" Text="<span style='Color:Red'><br>-Nenhum telefone disponível;</span><br>"></asp:Literal>
                <br /><asp:Button ID="BtnTel" runat="server" CssClass="blueB" onclick="BtnTel_Click" Text="Novo telefone" />
                <asp:Literal  ID="LitEmails" runat="server" Text="<span style='Color:Red'><br><br>-Nenhum registro eletrônico;</span><br>"></asp:Literal>
                <br /><asp:Button ID="BtnEma" runat="server" CssClass="blueB" onclick="BtnEma_Click" Text="Novo email" />
                <br />
                </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 31px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                Observação</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 31px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:TextBox ID="TxtObs" runat="server"  Height="98px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 140px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 31px">
                &nbsp;</td>
            <td style="width: 132px">
                &nbsp;</td>
            <td style="width: 342px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td colspan="5">
                Visita (motivo)</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:TextBox ID="TxtObsVis" runat="server"  Height="98px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                <br />
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:CheckBox ID="ChkVisMuni" runat="server" Text="Notificar em visita ao município" />
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 140px">
                &nbsp;</td>
            <td style="width: 341px">
                &nbsp;</td>
            <td style="width: 31px">
                &nbsp;</td>
            <td style="width: 132px">
                &nbsp;</td>
            <td style="width: 342px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
    </table>
    </td>

    </tr>

    </table>
</div>
</fieldset>

    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Marcas 
                de interesse</h6></div>

            <table style="width: 1050px">
            
            <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px" valign="top">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
            
            <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td colspan="2">
                <strong>Origem dos dados</strong></td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                <strong>Categorias</strong></td>
            <td style="width: 289px" valign="top">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
            
            <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px" valign="top">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="PnlOrig" runat="server" Height="180px" ScrollBars="Vertical" 
                    width="100%">
                    <asp:CheckBoxList ID="ChkOrig" runat="server"  Width="100%">
                    </asp:CheckBoxList>
                </asp:Panel>
                <asp:Literal  ID="LitOrig" runat="server"></asp:Literal>
            </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td colspan="2">
                <asp:Panel ID="PnlCateg" runat="server" Height="180px" ScrollBars="Vertical" 
                    width="100%">
                    <asp:CheckBoxList ID="ChkCateg" runat="server"  Width="100%">
                    </asp:CheckBoxList>                    
                </asp:Panel>
                <asp:Literal  ID="LitCateg" runat="server"></asp:Literal>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td colspan="2">
                <strong>Grupos de atividade econômica</strong></td>
            <td style="width: 16px">
                &nbsp;</td>
            <td colspan="2">
                <strong>Ramos de atividade econômica</strong></td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 22px">
                
                &nbsp;</td>
            <td colspan="2">
                
                <asp:Panel ID="PnlGrupoEcon" runat="server" Height="180px" ScrollBars="Vertical" 
                    width="100%">
                    <asp:CheckBoxList ID="ChkGrupoEcon" runat="server"  Width="100%">
                    </asp:CheckBoxList>
                </asp:Panel>
                <asp:Literal  ID="LitGrupoEcon" runat="server"></asp:Literal>
                
                </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td colspan="2">
                
                <asp:Panel ID="PnlRamoEcon" runat="server" Height="180px" ScrollBars="Vertical" 
                    width="100%">
                    <asp:CheckBoxList ID="ChkRamoEcon" runat="server"  Width="100%">
                    </asp:CheckBoxList>
                </asp:Panel>
                <asp:Literal  ID="LitRamoEcon" runat="server"></asp:Literal>                
                
                </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 22px">
                &nbsp;</td>
            <td style="width: 45px">
                &nbsp;</td>
            <td style="width: 270px" valign="top">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px" valign="top">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

            </table>

        </div>
    </fieldset>

    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Informações pessoais</h6></div>

            <table style="width: 1050px">

            <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px;">
                &nbsp;</td>
            <td style="width: 270px; ">
                &nbsp;</td>
            <td style="width: 16px; ">
                &nbsp;</td>
            <td style="width: 87px; ">
                &nbsp;</td>
            <td style="width: 289px; ">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

            <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px;">
                Tipo pessoa</td>
            <td style="width: 270px; ">
                <asp:DropDownList ID="CboTP" runat="server" Width="210px">
                    <asp:ListItem>Física</asp:ListItem>
                    <asp:ListItem>Jurídica</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 16px; ">
                &nbsp;</td>
            <td style="width: 87px; ">
                Profissão</td>
            <td style="width: 289px; ">
                <asp:DropDownList ID="CboProf" runat="server" Width="210px">
                </asp:DropDownList>
                </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px; ">
                Sexo</td>
            <td style="width: 270px;">
                <asp:DropDownList ID="CboTSexo" runat="server" Width="210px">
                    <asp:ListItem>Feminino</asp:ListItem>
                    <asp:ListItem>Masculino</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 16px; ">
                &nbsp;</td>
            <td style="width: 87px; ">
                Falecido</td>
            <td style="width: 289px;">
                <asp:DropDownList ID="CboFalecido" runat="server"   Width="210px">
                    <asp:ListItem>Não</asp:ListItem>
                    <asp:ListItem>Sim</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                Partido
            </td>
            <td style="width: 270px">
                <asp:DropDownList ID="CboPart" runat="server"   Width="210px"  Height="27px">
                </asp:DropDownList>
            </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                Fornecedor</td>
            <td colspan="4">
                <asp:TextBox ID="TxtFornecedor" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                Abonador</td>
            <td style="width: 270px">
                <asp:TextBox ID="TxtAbonador" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                Dt. filiação</td>
            <td style="width: 270px">
                <input type="text" class="datepicker" id="TxtDtFilia" runat="server"/>
            </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                Tít. eleitor</td>
            <td style="width: 289px">
                <asp:TextBox ID="TxtTitEleitor" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px"></asp:TextBox>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                &nbsp;</td>
            <td style="width: 270px">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 45px">
                Dt. desfiliação</td>
            <td style="width: 270px">
                <input type="text" class="datepicker" id="TxtDtDesfilia" runat="server"/>                
            </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                Zona / Seção</td>
            <td style="width: 289px">
                <asp:TextBox ID="TxtZona" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="80px"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:TextBox ID="TxtSecao" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="80px"></asp:TextBox>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

            </table>

        </div>
    </fieldset>

    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Contatos 
                com este cadastro</h6></div>

            <table style="width: 1050px">

            <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

            <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                Informações de contato</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TxtObsContato" runat="server"  Height="98px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="ChkContato" runat="server" Text="Contato feito" 
                     />
                &nbsp;&nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                <asp:Literal  ID="LitCont" runat="server" Text="<span style='Color:Red'>-Nenhum contato disponível;</span>"></asp:Literal>
                </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

            </table>

        </div>
    </fieldset>

    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Imagens 
                e documentos</h6></div>

            <table style="width: 1050px">

            <tr>
            <td valign="top">
                &nbsp;</td>
            <td colspan="2" valign="top">
                <asp:Literal  ID="LitImagens" runat="server" Text="<span style='Color:Red'><br>-Nenhuma imagem disponível;</span>"></asp:Literal>
                <br />
            </td>
            <td valign="top" style="width: 16px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                <asp:Literal  ID="LitDocs" runat="server" Text="<span style='Color:Red'><br>-Nenhum documento disponível;</span>"></asp:Literal>
                <br />
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td valign="top" style="width: 16px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

            </table>

        </div>
    </fieldset>

    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>
                Dados de campanha</h6></div>

            <table style="width: 1050px">

            <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td colspan="4">
                <asp:Literal ID="LitCamp" runat="server"></asp:Literal>
            </td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LnkCamp" runat="server" onclick="LnkCamp_Click">Visualizar dados de campanha para este cadastro</asp:LinkButton>
            </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 87px">
                &nbsp;</td>
            <td style="width: 289px">
                &nbsp;</td>
            <td style="width: 10px">
                &nbsp;</td>
        </tr>

            </table>

        </div>
    </fieldset>
</form>
<br />
<asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
<br /><br />

</asp:Content>
