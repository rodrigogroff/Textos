<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DemandaRefManut.aspx.cs" Inherits="MVApp.DemandaRefManut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados da referência</h6></div>
            <table id="mainTbl" width="450px">
            <tr>
            <td style="width: 24px" rowspan="7" valign="top">
                &nbsp;</td>
            <td style="width: 88px;">
                &nbsp;</td>
            <td style="width: 148px;">
                                    &nbsp;</td>
            <td style="width: 43px; ">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px;">
                Nome</td>
            <td style="width: 148px;">
                                    <asp:TextBox ID="TxtNome" runat="server" Width="180px" 
                    MaxLength="29"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 43px; ">
                                    </td>
            </tr>
            <tr>
            <td style="width: 88px">
                Dias de prazo</td>
            <td style="width: 148px">
                                    <asp:TextBox ID="TxtDias" runat="server" Width="180px" 
                    MaxLength="60" 
                            
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 43px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Bloqueado</td>
            <td style="width: 148px">
                    <asp:DropDownList ID="CboBloq" runat="server" Width="210px">
                        <asp:ListItem>(Selecione)</asp:ListItem>
                        <asp:ListItem>Sim</asp:ListItem>
                        <asp:ListItem>Não</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td style="width: 43px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Estágio</td>
            <td style="width: 148px">
                    <asp:DropDownList ID="CboEstagio" runat="server" Width="210px">
                        <asp:ListItem>Não</asp:ListItem>
                        <asp:ListItem>Sim</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td style="width: 43px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                Patrocínio</td>
            <td style="width: 148px">
                    <asp:DropDownList ID="CboPat" runat="server" Width="210px">
                        <asp:ListItem>Não</asp:ListItem>
                        <asp:ListItem>Sim</asp:ListItem>
                    </asp:DropDownList>
                </td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 43px">
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
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</asp:Content>

