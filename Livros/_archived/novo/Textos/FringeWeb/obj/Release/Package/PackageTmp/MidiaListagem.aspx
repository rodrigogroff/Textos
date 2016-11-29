<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MidiaListagem.aspx.cs" Inherits="MVApp.MidiaListagem" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pesquisa</h6></div>
            <table id="mainTbl" >
<tr>
<td valign="top" style="width: 444px">

<table class="tbl_filter" style="width: 777px" >
<tr>
<td style="width: 20px">
    &nbsp;</td>
<td style="width: 109px">
    &nbsp;</td>
<td style="width: 206px">
    &nbsp;</td>

<td style="width: 25px" class="navigation_button">
    &nbsp;</td>

<td style="width: 133px">
    &nbsp;</td>

<td style="width: 285px">
    &nbsp;</td>

<td style="width: 27px">
    &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
<td style="width: 109px;">
    Empresa</td>
<td colspan="4">
    <asp:TextBox ID="TxtNome" runat="server"  OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
        ></asp:TextBox>
</td>

<td style="width: 27px">
                &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
                                <td style="width: 119px">Estado</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboEst" runat="server"  onselectedindexchanged="CboEst_SelectedIndexChanged" AutoPostBack="True" Width="210px">        
                            </asp:DropDownList>
                                </td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>Município</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboMuni" runat="server"  Width="210px">
                            </asp:DropDownList>
                                </td>

<td style="width: 27px">
                &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
                                <td style="width: 119px">Macroregião</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboReg" runat="server" Width="210px" AutoPostBack="True" 
                                onselectedindexchanged="CboReg_SelectedIndexChanged"></asp:DropDownList>
                                </td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>Microregião</td>
                                <td width='120px'>
                            <asp:DropDownList ID="CboMicroReg" runat="server" Width="210px"></asp:DropDownList>
                                </td>

<td style="width: 27px">
    &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>

<td style="width: 27px">
    &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
<td colspan="2">
<asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" 
        onclick="BtnPesq_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="BtnEmail" runat="server" Text="Mail List" CssClass="blueB" 
        onclick="BtnEmail_Click" />
    </td>

<td style="width: 25px" class="navigation_button">
    &nbsp;</td>

<td style="width: 133px">
    &nbsp;</td>

<td style="width: 285px">
    &nbsp;</td>

<td style="width: 27px">
    &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
<td style="width: 109px">
    &nbsp;</td>
<td style="width: 206px">
    &nbsp;</td>

<td style="width: 25px" class="navigation_button">
    &nbsp;</td>

<td style="width: 133px">
    &nbsp;</td>

<td style="width: 285px">
    &nbsp;</td>

<td style="width: 27px">
    &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
<td colspan="5">
    <asp:TextBox ID="TxtMail" runat="server" Height="423px" TextMode="MultiLine" 
        Width="720px"></asp:TextBox>
    </td>

<td style="width: 27px">
    &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
<td colspan="5">
    <asp:Literal  ID="LitRes" runat="server"></asp:Literal></td>

<td style="width: 27px">
    &nbsp;</td>

<tr>
<td style="width: 20px">
    &nbsp;</td>
<td style="width: 109px">
    &nbsp;</td>
<td style="width: 206px">
    &nbsp;</td>

<td style="width: 25px" class="navigation_button">
    &nbsp;</td>

<td style="width: 133px">
    &nbsp;</td>

<td style="width: 285px">
    &nbsp;</td>

<td style="width: 27px">
    &nbsp;</td>

</table>

</td>

</tr>
</table>
        </div>
    </fieldset>       
    
</form>
</asp:Content>

