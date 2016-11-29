<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AgendaEventosManut.aspx.cs" Inherits="MVApp.AgendaEventosManut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados da feira ou evento</h6></div>
            <table id="mainTbl" width="600px">
            <tr>
            <td style="width: 24px" rowspan="8" valign="top">
                &nbsp;</td>
            <td style="width: 91px;">
                &nbsp;</td>
            <td style="width: 355px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 91px;">
                Feira ou evento</td>
            <td style="width: 355px;">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="200"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="width: 91px">
                Data inicial</td>
            <td style="width: 355px">
                <input type="text" class="datepicker" id="TxtDtIni" runat="server"/></td>
            </tr>
            <tr>
            <td style="width: 91px">
                Data final</td>
            <td style="width: 355px">
                <input type="text" class="datepicker" id="TxtDtFim" runat="server"/></td>
            </tr>
            <tr>
            <td style="width: 91px">
                Estado</td>
            <td style="width: 355px">
                            <asp:DropDownList ID="CboEst" runat="server"  onselectedindexchanged="CboEst_SelectedIndexChanged" AutoPostBack="True" Width="210px">        
                            </asp:DropDownList>
                            </td>
            </tr>
            <tr>
            <td style="width: 91px">
                Município</td>
            <td style="width: 355px">
                            <asp:DropDownList ID="CboMuni" runat="server"  Width="210px">
                            </asp:DropDownList>
                            </td>
            </tr>
            <tr>
            <td style="width: 91px">
                Bloqueado</td>
            <td style="width: 355px">

            <asp:DropDownList ID="CboBloq" runat="server" Width="210px">
                <asp:ListItem>Não</asp:ListItem>
                <asp:ListItem>Sim</asp:ListItem>
            </asp:DropDownList>
            
                </td>
            </tr>
            <tr>
            <td style="width: 91px">
                &nbsp;</td>
            <td style="width: 355px">
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

