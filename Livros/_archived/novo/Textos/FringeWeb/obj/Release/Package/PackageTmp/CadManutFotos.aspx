<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadManutFotos.aspx.cs" Inherits="MVApp.CadManutFotos" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Fotos e imagens do cadastro</h6></div>
            <table id="mainTbl">
<tr>
<td valign="middle" class="style2">
    
    <table style="width: 706px">
        <tr>
            <td style="width: 23px; height: 19px;">
            </td>
            <td style="width: 178px; height: 19px;">
            </td>
            <td style="width: 317px; height: 19px;" valign="top">
            </td>
            <td style="width: 153px; height: 19px;" valign="middle">
                &nbsp;</td>
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
            <td style="width: 178px">
                <strong>Nome</strong></td>
            <td style="width: 317px" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px" ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 153px" valign="middle">
                &nbsp;</td>
            <td style="width: 153px" valign="middle">
                <strong>Apelido</strong></td>
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
            <td class="style3" rowspan="5" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 178px">
                &nbsp;</td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px">
                Descrição</td>
            <td style="width: 317px">
                <asp:TextBox ID="TxtDesc" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Width="200px"></asp:TextBox>
            </td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px; height: 29px;">
                Arquivo</td>
            <td style="width: 317px; height: 29px;">
                <asp:FileUpload ID="FileUploadFoto" runat="server"  />
            </td>
            <td style="width: 153px; height: 29px;">
                &nbsp;</td>
            <td style="width: 153px; height: 29px;">
                &nbsp;</td>
            <td style="width: 311px; height: 29px;">
                &nbsp;</td>
            <td style="width: 11px; height: 29px;">
                </td>
        </tr>
        <tr>
            <td style="width: 178px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 153px">
                &nbsp;</td>
            <td style="width: 311px">
                &nbsp;</td>
            <td style="width: 11px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 178px">
                &nbsp;</td>
            <td style="width: 317px">
                &nbsp;</td>
            <td style="width: 153px">
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
            <td valign="top" colspan="5">
                <asp:Literal  ID="LitImagens" runat="server" Text="&lt;span style='Color:Red'&gt;-Nenhum registro disponível;&lt;/span&gt;"></asp:Literal>
            </td>
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
