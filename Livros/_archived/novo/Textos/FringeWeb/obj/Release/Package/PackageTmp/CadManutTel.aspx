<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadManutTel.aspx.cs" Inherits="MVApp.CadManutTel" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Telefones do cadastro</h6></div>
            <table id="mainTbl">
<tr>
<td valign="middle" class="style2">
    
    <table style="width: 725px">
        <tr>
            <td style="width: 23px; height: 19px;">
            </td>
            <td style="width: 198px; height: 19px;">
            </td>
            <td style="width: 317px; height: 19px;" valign="top">
            </td>
            <td style="width: 153px; height: 19px;" valign="middle">
            </td>
            <td style="width: 311px; height: 19px;" valign="middle">
            </td>
            <td style="width: 11px; height: 19px;" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 198px">
                Nome</td>
            <td style="width: 317px" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 153px" valign="middle">
                Apelido</td>
            <td style="width: 311px" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 11px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" rowspan="7" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 198px">
                &nbsp;</td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                Tipo de telefone</td>
            <td style="width: 317px">
                <asp:DropDownList ID="CboTipo" runat="server"   Width="210px">
                    <asp:ListItem>Celular</asp:ListItem>
                    <asp:ListItem>Residencial</asp:ListItem>
                    <asp:ListItem>Comercial</asp:ListItem>
                    <asp:ListItem>FAX</asp:ListItem>
                    <asp:ListItem>Outro</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 153px">
                Obs.:</td>
            <td style="width: 311px">
                <asp:TextBox ID="TxtObs" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ></asp:TextBox>
            </td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                Telefone</td>
            <td style="width: 317px">
                <asp:TextBox ID="TxtTelNovo" runat="server"  
                    mask="(99) 9999-99999" MaxLength="20" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" Width="200px"></asp:TextBox>
            </td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px; height: 33px;">
                &nbsp;</td>
            <td style="width: 317px; height: 33px;">
                &nbsp;</td>
            <td style="width: 153px; height: 33px;">
                &nbsp;</td>
            <td style="width: 311px; height: 33px;">
                &nbsp;</td>
            <td style="width: 11px; height: 33px;">
                </td>
        </tr>
        <tr>
            <td style="width: 198px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 198px">
                &nbsp;</td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td valign="top" colspan="2">
                <asp:Literal  ID="LitTels" runat="server" Text="&lt;span style='Color:Red'&gt;-Nenhum registro disponível;&lt;/span&gt;"></asp:Literal>
                <br />
            </td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
    </table>
    </td>

    <tr>
        <td valign="top">
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
