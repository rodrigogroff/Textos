<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdmUserTrocaSenha.aspx.cs" Inherits="MVApp.AdmUserTrocaSenha" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Senha de acesso</h6></div>
            <table id="mainTbl">

<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 118px">
    &nbsp;</td>
<td style="width: 169px">
                        &nbsp;</td>
<td style="width: 169px">
                        &nbsp;</td>
</tr>

<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 118px">
    Senha atual</td>
<td style="width: 169px">
                        <asp:TextBox ID="TxtAtual" runat="server" Width="220px" 
        MaxLength="29"                             
        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" TextMode="Password"></asp:TextBox>
</td>
<td style="width: 169px">
                        &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 118px">
    Senha nova</td>
<td style="width: 169px">
                        <asp:TextBox ID="TxtNova" runat="server" Width="220px" 
        MaxLength="29" 
                            
        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" TextMode="Password"></asp:TextBox>
</td>
<td style="width: 169px">
                        &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 118px">
    Confirmação</td>
<td style="width: 169px">
                        <asp:TextBox ID="TxtConf" runat="server" Width="220px" 
        MaxLength="29" 
                            
        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" TextMode="Password"></asp:TextBox>
</td>
<td style="width: 169px">
                        &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 118px">
    &nbsp;</td>
<td style="width: 169px">
    &nbsp;</td>
<td style="width: 169px">
    &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 118px">
    <asp:Button ID="BtnUpdate" runat="server" CssClass="blueB" Text="Salvar" 
        onclick="BtnUpdate_Click" />
</td>
<td style="width: 169px">
    &nbsp;&nbsp;</td>
<td style="width: 169px">
    &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 118px">
    &nbsp;</td>
<td style="width: 169px">
    &nbsp;</td>
<td style="width: 169px">
    &nbsp;</td>
</tr>
        </table>
        </div>
    </fieldset>


</asp:Content>

