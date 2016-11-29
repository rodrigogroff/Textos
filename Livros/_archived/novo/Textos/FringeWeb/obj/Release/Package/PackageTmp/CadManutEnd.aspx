<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadManutEnd.aspx.cs" Inherits="MVApp.CadManutEnd" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Endereços do cadastro</h6></div>
            <table id="mainTbl">
<tr>
<td valign="middle" class="style2">
    
    <table style="width: 661px">
        <tr>
            <td style="width: 23px; height: 19px;">
            </td>
            <td style="width: 83px; height: 19px;">
            </td>
            <td style="width: 205px; height: 19px;" valign="top">
            </td>
            <td style="width: 15px; height: 19px;" valign="middle">
                &nbsp;</td>
            <td style="width: 72px; height: 19px;" valign="middle">
            </td>
            <td style="width: 222px; height: 19px;" valign="middle">
            </td>
            <td style="width: 30px; height: 19px;" valign="top">
            </td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td style="width: 83px">
                Nome</td>
            <td style="width: 205px" valign="top">
                <asp:TextBox ID="TxtNome" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 15px" valign="middle">
                &nbsp;</td>
            <td style="width: 72px" valign="middle">
                Apelido</td>
            <td style="width: 222px" valign="middle">
                <asp:TextBox ID="TxtApelido" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    ReadOnly="True" ></asp:TextBox>
            </td>
            <td style="width: 30px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" rowspan="9" style="width: 23px" valign="top">
                &nbsp;</td>
            <td style="width: 83px">
                Tipo</td>
            <td style="width: 205px">
                <asp:DropDownList ID="CboTipo" runat="server" Width="210px">
                    <asp:ListItem>Residencial</asp:ListItem>
                    <asp:ListItem>Comercial</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 15px">
                &nbsp;</td>
            <td style="width: 72px">
                &nbsp;</td>
            <td style="width: 222px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 83px">
                &nbsp;</td>
            <td style="width: 205px">
                &nbsp;</td>
            <td style="width: 15px">
                &nbsp;</td>
            <td style="width: 72px">
                &nbsp;</td>
            <td style="width: 222px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 83px; height: 29px;">
                Endereço</td>
            <td style="width: 205px; height: 29px;">
                <asp:TextBox ID="TxtEndNovo" runat="server"  MaxLength="180" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 15px; height: 29px;">
                &nbsp;</td>
            <td style="width: 72px; height: 29px;">
                Bairro</td>
            <td style="width: 222px; height: 29px;">
                <asp:TextBox ID="TxtBairro" runat="server"  MaxLength="90" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 30px; height: 29px;">
                </td>
        </tr>
        <tr>
            <td style="width: 83px; height: 29px;">
                CEP</td>
            <td style="width: 205px; height: 29px;">
                <asp:TextBox ID="TxtEndCEP" runat="server"  MaxLength="9" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 15px; height: 29px;">
                &nbsp;</td>
            <td style="width: 72px; height: 29px;">
                &nbsp;</td>
            <td style="width: 222px; height: 29px;">
                &nbsp;</td>
            <td style="width: 30px; height: 29px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 83px; height: 29px;">
                Pais</td>
            <td style="width: 205px; height: 29px;">
                <asp:DropDownList ID="CboPais" runat="server"  Width="210px" AutoPostBack="True" onselectedindexchanged="CboPais_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 15px; height: 29px;">
                &nbsp;</td>
            <td style="width: 72px; height: 29px;">
                &nbsp;</td>
            <td style="width: 222px; height: 29px;">
                &nbsp;</td>
            <td style="width: 30px; height: 29px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 83px; height: 33px;">
                Estado</td>
            <td style="width: 205px; height: 33px;">
                <asp:DropDownList ID="CboEstNovo" runat="server" AutoPostBack="True" Width="210px" 
                     onselectedindexchanged="CboEstNovo_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="width: 15px; height: 33px;">
                &nbsp;</td>
            <td style="width: 72px; height: 33px;">
                Municipio</td>
            <td style="width: 222px; height: 33px;">
                <asp:DropDownList ID="CboMuniNovo" runat="server" Width="210px">
                </asp:DropDownList>
            </td>
            <td style="width: 30px; height: 33px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 83px">
                &nbsp;</td>
            <td style="width: 205px">
                &nbsp;</td>
            <td style="width: 15px">
                &nbsp;</td>
            <td style="width: 72px">
                &nbsp;</td>
            <td style="width: 222px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 83px">
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            </td>
            <td style="width: 205px">
                &nbsp;</td>
            <td style="width: 15px">
                &nbsp;</td>
            <td style="width: 72px">
                &nbsp;</td>
            <td style="width: 222px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 83px">
                &nbsp;</td>
            <td style="width: 205px">
                &nbsp;</td>
            <td style="width: 15px">
                &nbsp;</td>
            <td style="width: 72px">
                &nbsp;</td>
            <td style="width: 222px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" style="width: 23px">
                &nbsp;</td>
            <td valign="top" colspan="5">
                <asp:Literal  ID="LitEnds" runat="server" 
                    
                    Text="&lt;span style='Color:Red'&gt;-Nenhum registro disponível;&lt;/span&gt;"></asp:Literal>
                <br />
                <br />
            </td>
            <td style="width: 30px">
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
