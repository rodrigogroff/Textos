<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CadCategManut.aspx.cs" Inherits="MVApp.CadCategManut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados da categoria</h6></div>
            <table id="mainTbl" width="450px">
            <tr>
            <td style="width: 24px" rowspan="5" valign="top">
                &nbsp;</td>
            <td style="width: 88px;">
                &nbsp;</td>
            <td style="width: 342px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px;">
                Nome</td>
            <td style="width: 342px;">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Exibir</td>
            <td style="width: 342px">
                <asp:CheckBox ID="ChkExibe" runat="server" Text="Sim" />
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Alterar</td>
            <td style="width: 342px">
                <asp:CheckBox ID="ChkEdita" runat="server" Text="Sim" />
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 342px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="BtnUpdate" runat="server" CssClass="blueB" Text="Salvar" 
                    onclick="BtnUpdate_Click" style="text-align: right" />
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</asp:Content>

