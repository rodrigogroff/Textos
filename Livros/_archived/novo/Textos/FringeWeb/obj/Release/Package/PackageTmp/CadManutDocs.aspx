<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadManutDocs.aspx.cs" Inherits="MVApp.CadManutDocs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Documentos do cadastro</h6></div>
            <table id="mainTbl">

<tr>
<td valign="middle" class="style2">
    
    <table style="width: 648px">
        <tr>
            <td style="width: 23px; height: 19px;">
            </td>
            <td style="width: 89px; height: 19px;">
            </td>
            <td style="width: 209px; height: 19px;" valign="top">
            </td>
            <td style="width: 42px; height: 19px;" valign="middle">
                &nbsp;</td>
            <td style="width: 54px; height: 19px;" valign="middle">
            </td>
            <td style="width: 283px; height: 19px;" valign="middle">
            </td>
            <td style="width: 22px; height: 19px;" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px; height: 38px;">
                </td>
            <td style="width: 89px; height: 38px;">
                <strong>Nome</strong></td>
            <td style="width: 209px; height: 38px;" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 42px; height: 38px;" valign="middle">
                &nbsp;</td>
            <td style="width: 54px; height: 38px;" valign="middle">
                <strong>Apelido</strong></td>
            <td style="width: 283px; height: 38px;" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 22px; height: 38px;" valign="top">
                </td>
        </tr>
        <tr>
            <td class="style3" rowspan="6" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 89px">
                &nbsp;</td>
            <td style="width: 209px">
                &nbsp;</td>
            <td style="width: 42px">
                &nbsp;</td>
            <td style="width: 54px">
                &nbsp;</td>
            <td style="width: 283px">
                &nbsp;</td>
            <td style="width: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px">
                Descrição</td>
            <td style="width: 209px">
                <asp:TextBox ID="TxtMotivArq" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 42px">
                &nbsp;</td>
            <td style="width: 54px">
                &nbsp;</td>
            <td style="width: 283px">
                &nbsp;</td>
            <td style="width: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px; height: 29px;">
                Arquivo</td>
            <td style="width: 209px; height: 29px;">
                <asp:FileUpload ID="FileUploadArq" runat="server"  />
            </td>
            <td style="width: 42px; height: 29px;">
                &nbsp;</td>
            <td style="width: 54px; height: 29px;">
                &nbsp;</td>
            <td style="width: 283px; height: 29px;">
                &nbsp;</td>
            <td style="width: 22px; height: 29px;">
                </td>
        </tr>
        <tr>
            <td style="width: 89px; height: 33px;">
                &nbsp;</td>
            <td style="width: 209px; height: 33px;">
                &nbsp;</td>
            <td style="width: 42px; height: 33px;">
                &nbsp;</td>
            <td style="width: 54px; height: 33px;">
                &nbsp;</td>
            <td style="width: 283px; height: 33px;">
                &nbsp;</td>
            <td style="width: 22px; height: 33px;">
                </td>
        </tr>
        <tr>
            <td style="width: 89px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 209px">
                &nbsp;</td>
            <td style="width: 42px">
                &nbsp;</td>
            <td style="width: 54px">
                &nbsp;</td>
            <td style="width: 283px">
                &nbsp;</td>
            <td style="width: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 89px">
                &nbsp;</td>
            <td style="width: 209px">
                &nbsp;</td>
            <td style="width: 42px">
                &nbsp;</td>
            <td style="width: 54px">
                &nbsp;</td>
            <td style="width: 283px">
                &nbsp;</td>
            <td style="width: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td valign="top" colspan="2">
                <strong>Lista de documentos</strong><br />
                <br />
                <asp:Literal  ID="LitDocs" runat="server" Text="&lt;span style='Color:Red'&gt;-Nenhum registro disponível;&lt;/span&gt;"></asp:Literal>
                <br />
                <br />
            </td>
            <td valign="top">
                &nbsp;</td>
            <td colspan="2" valign="top">
                &nbsp;</td>
            <td style="width: 22px">
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


