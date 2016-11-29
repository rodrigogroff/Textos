<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadManutEmail.aspx.cs" Inherits="MVApp.CadManutEmail" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Registros eletrônicos do cadastro</h6></div>
            <table id="mainTbl">
<tr>
<td valign="middle" class="style2">
    
    <table style="width: 701px">
        <tr>
            <td style="width: 23px; height: 19px;">
            </td>
            <td style="width: 128px; height: 19px;">
            </td>
            <td style="width: 246px; height: 19px;" valign="top">
            </td>
            <td style="width: 67px; height: 19px;" valign="middle">
            </td>
            <td style="width: 235px; height: 19px;" valign="middle">
            </td>
            <td style="width: 23px; height: 19px;" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 128px">
                Nome</td>
            <td style="width: 246px" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 67px" valign="middle">
                Apelido</td>
            <td style="width: 235px" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 23px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" rowspan="7" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 128px">
                &nbsp;</td>
            <td style="width: 246px">
                &nbsp;</td>
            <td style="width: 67px">
                &nbsp;</td>
            <td style="width: 235px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 128px">
                Tipo</td>
            <td style="width: 246px">
                <asp:DropDownList ID="CboTipo" runat="server"  Width="210px">
                    <asp:ListItem>Email</asp:ListItem>
                    <asp:ListItem>Facebook</asp:ListItem>
                    <asp:ListItem>Twitter</asp:ListItem>
                    <asp:ListItem>Instagram</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 128px">
                &nbsp;</td>
            <td style="width: 246px">
                &nbsp;&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 128px">
                Registro </td>
            <td style="width: 246px">
                <asp:TextBox ID="TxtEmailNovo" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px"></asp:TextBox>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 128px; height: 33px;">
                &nbsp;</td>
            <td style="width: 246px; height: 33px;">
                &nbsp;</td>
            <td style="width: 67px; height: 33px;">
                &nbsp;</td>
            <td style="width: 235px; height: 33px;">
                &nbsp;</td>
            <td style="width: 23px; height: 33px;">
                </td>
        </tr>
        <tr>
            <td style="width: 128px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 246px">
                &nbsp;</td>
            <td style="width: 67px">
                &nbsp;</td>
            <td style="width: 235px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 128px">
                &nbsp;</td>
            <td style="width: 246px">
                &nbsp;</td>
            <td style="width: 67px">
                &nbsp;</td>
            <td style="width: 235px">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td valign="top" colspan="2">
                <asp:Literal  ID="LitEmails" runat="server" 
                    Text="&lt;span style='Color:Red'&gt;-Nenhum registro disponível;&lt;/span&gt;"></asp:Literal>
                <br />
            </td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td style="width: 23px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td valign="top" colspan="2">
                &nbsp;</td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td style="width: 23px">
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
