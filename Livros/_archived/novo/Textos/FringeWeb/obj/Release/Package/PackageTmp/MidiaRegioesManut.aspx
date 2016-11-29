<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MidiaRegioesManut.aspx.cs" Inherits="MVApp.MidiaRegioesManut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados de microregião</h6></div>
            <table id="mainTbl" width="650px">
            <tr>
            <td style="width: 24px" rowspan="6" valign="top">
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
                    MaxLength="160"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Macroregião</td>
            <td style="width: 342px">
                <asp:DropDownList ID="CboTR" runat="server"  Width="210px">
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Estado</td>
            <td style="width: 342px">
                <asp:DropDownList ID="CboEstNovo" runat="server" AutoPostBack="True" Width="210px" 
                     onselectedindexchanged="CboEstNovo_SelectedIndexChanged">
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
            <td style="width: 88px">
                </td>
            <td style="width: 342px">

                <asp:Panel ID="pnlMuni" runat="server" Height="250px" ScrollBars="Vertical">
                    <br />
                    <b>Listagem completa de municípios da microregião</b><br />
                    <br />
                    <asp:Literal ID="LitMuni" runat="server"></asp:Literal>
                    <b>Manutenção de municípios inclusos</b><br />
                    <br />
                    <asp:CheckBoxList ID="ChkMuni" runat="server"></asp:CheckBoxList>
                </asp:Panel>

                &nbsp;</td>
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
