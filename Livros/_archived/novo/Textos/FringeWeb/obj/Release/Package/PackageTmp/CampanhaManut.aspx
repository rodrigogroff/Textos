<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CampanhaManut.aspx.cs" Inherits="MVApp.CampanhaManut" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados de campanha</h6></div>
            <table id="mainTbl" width="850px">
            <tr>
            <td style="width: 25px;">
                &nbsp;</td>
            <td style="width: 96px;">
                &nbsp;</td>
            <td style="width: 484px;">
                                    &nbsp;</td>
            <td style="width: 20px;">
                                    &nbsp;</td>
            <td style="width: 132px;">
                                    &nbsp;</td>
            <td style="width: 286px;">
                                    &nbsp;</td>
            <td style="width: 13px;">
                                    &nbsp;</td>
            <td style="width: 30px;">
                                    &nbsp;</td>
            <td style="width: 30px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px;">
                &nbsp;</td>
            <td style="width: 96px;">
                Nome</td>
            <td style="width: 484px;">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 20px;">
                                    &nbsp;</td>
            <td colspan="4">
                <asp:Literal ID="LitConts" runat="server"></asp:Literal>
                </td>
            <td>
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 96px">
                Ano</td>
            <td style="width: 484px">
                    <asp:TextBox ID="TxtAno" runat="server"  mask="9999" MaxLength="4" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );" ></asp:TextBox>
                </td>
            <td style="width: 20px">
                    &nbsp;</td>
            <td colspan="4">
                <asp:Button ID="BtnCont" runat="server" CssClass="blueB" Text="Gerenciar contatos" 
                    onclick="BtnCont_Click" style="text-align: right" />
                &nbsp;
                <asp:Button ID="BtnAtu" runat="server" CssClass="blueB" Text="Atualizar" 
                    onclick="BtnAtu_Click" style="text-align: right" />
                </td>
            <td style="width: 30px">
                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 96px">
                Observação</td>
            <td style="width: 484px">
                                    <asp:TextBox ID="TxtObs" runat="server" 
                    MaxLength="2000"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Height="104px" TextMode="MultiLine"></asp:TextBox>
                </td>
            <td style="width: 20px">
                                    &nbsp;</td>
            <td valign="top" style="width: 132px">
                &nbsp;</td>
            <td valign="top" style="width: 286px">
                &nbsp;</td>
            <td style="width: 13px">
                                    &nbsp;</td>
            <td style="width: 30px">
                                    &nbsp;</td>
            <td style="width: 30px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                <asp:Literal ID="LitUsers" runat="server"></asp:Literal>
                <br />
                <br />
                </td>
            <td style="width: 20px">
                &nbsp;</td>
            <td style="width: 132px">
                Novo usuário</td>
            <td style="width: 286px">
                    <asp:DropDownList ID="CboUser" runat="server" Width="210px">
                    </asp:DropDownList>


                </td>
            <td style="width: 13px">
                &nbsp;</td>
            <td style="width: 30px">
                <asp:Button ID="BtnInsUser" runat="server" CssClass="blueB" Text="Adicionar" 
                    onclick="BtnInsUser_Click" style="text-align: right" />
                </td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td colspan="5">
                <asp:Panel ID="PnlConts" runat="server" Height="260px" ScrollBars="Vertical">
                    <asp:Literal ID="LitContRep" runat="server"></asp:Literal>
                </asp:Panel>
                </td>
            <td style="width: 13px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 96px">
                &nbsp;</td>
            <td style="width: 484px">
                    &nbsp;</td>
            <td style="width: 20px">
                &nbsp;</td>
            <td style="width: 132px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 13px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 96px">
                <asp:Button ID="BtnUpdate" runat="server" CssClass="blueB" Text="Salvar" 
                    onclick="BtnUpdate_Click" style="text-align: right" />
                </td>
            <td style="width: 484px">
                    &nbsp;</td>
            <td style="width: 20px">
                &nbsp;</td>
            <td style="width: 132px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 13px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 96px">
                &nbsp;</td>
            <td style="width: 484px">
                    &nbsp;</td>
            <td style="width: 20px">
                &nbsp;</td>
            <td style="width: 132px">
                &nbsp;</td>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 13px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</asp:Content>

