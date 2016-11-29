<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdmPerfilManut.aspx.cs" Inherits="MVApp.AdmPerfilManut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

        
<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
    
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Perfil de acesso</h6></div>
            <table id="mainTbl">

<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 141px">
    &nbsp;</td>
<td style="width: 387px">
                        &nbsp;</td>
<td style="width: 34px">
                        &nbsp;</td>
</tr>

<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 141px">
    Nome do perfil </td>
<td style="width: 387px">
                        <asp:TextBox ID="TxtNome" runat="server" Width="220px" 
        MaxLength="29"                             
        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
</td>
<td style="width: 34px">
                        &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 141px">
    Módulos</td>
<td style="width: 387px">
    <asp:CheckBoxList ID="ChkMdls" runat="server" >
    </asp:CheckBoxList>
    </td>
<td style="width: 34px">
    &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 141px">
    &nbsp;</td>
<td style="width: 387px">
    &nbsp;</td>
<td style="width: 34px">
    &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 141px">
    <asp:Button ID="BtnUpdate" runat="server" CssClass="blueB" Text="Salvar" 
        onclick="BtnUpdate_Click" />
</td>
<td style="width: 387px">
    &nbsp;</td>
<td style="width: 34px">
    &nbsp;</td>
</tr>
<tr>
<td style="width: 24px">
    &nbsp;</td>
<td style="width: 141px">
    &nbsp;</td>
<td style="width: 387px">
    &nbsp;</td>
<td style="width: 34px">
    &nbsp;</td>
</tr>
</table>
        </div>
        </div>
    </fieldset>
    </form>

</asp:Content>
