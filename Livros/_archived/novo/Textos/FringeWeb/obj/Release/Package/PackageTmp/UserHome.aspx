<%@ Page Language="C#" AutoEventWireup="true" Inherits="UserHome" MasterPageFile="~/Main.Master" ValidateRequest="false" EnableEventValidation="false" Codebehind="UserHome.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<table>

<tr>
<td valign="top" colspan="3">
<asp:Literal  ID="LitInfo" runat="server"></asp:Literal>
    <br /></td>

</tr>

<tr>
<td style="width: 417px" valign="top">
    <asp:Label ID="LblUser" runat="server"></asp:Label>
    <br />
</td>

<td style="width: 12px" valign="top">
    &nbsp;</td>

<td style="width: 373px" valign="top">
    &nbsp;</td>

</tr>

<tr>
<td style="width: 417px" valign="top">
    <br />
    <asp:CheckBox ID="ChkOficial" runat="server" AutoPostBack="True" Checked="True" 
        oncheckedchanged="ChkOficial_CheckedChanged" 
        Text="Agenda oficial do gabinete" />
    <br />
    <br />
    <asp:Literal  ID="LitRes2" runat="server"></asp:Literal>
</td>

<td style="width: 12px" valign="top">
</td>

<td style="width: 373px" valign="top">
    
    
    <form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Listagem de demandas</h6></div>

    <table style="width: 339px" id="mainTbl"><tr><td style="width: 113px">
    
    
    
        Novo documento</td><td style="width: 66px">
    
    
    
    <asp:FileUpload ID="FileUploadDoc" runat="server"  Width="120px" />

    </td></tr><tr><td style="width: 113px">
    
    
    
    Descrição</td><td style="width: 66px">
    
    
    
                        <asp:TextBox ID="TxtDesc" runat="server" Width="200px" 
        MaxLength="150"                             
        OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
        OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>

    </td></tr><tr><td style="width: 113px">
    
    
    
            &nbsp;</td><td style="width: 66px">
    
    
    
                &nbsp;</td></tr><tr><td style="width: 113px">
    
    
    
            <asp:Button ID="BntDoc" runat="server"  Text="Salvar" 
                Width="95px" CssClass="blueB" onclick="BntDoc_Click" />

    </td><td style="width: 66px">
    
    
    
                &nbsp;</td></tr><tr><td style="width: 113px">
    
    
    
            &nbsp;</td><td style="width: 66px">
    
    
    
                &nbsp;</td></tr><tr><td colspan="2">
    
    
    
            <asp:Literal  ID="LitDocs" runat="server"></asp:Literal>

    </td></tr></table>
        </div>
    </fieldset>       
</form>


    </td>

</tr>

</table>

</ContentTemplate>
<Triggers>
<asp:PostBackTrigger ControlID = "BntDoc" />
</Triggers>

</asp:UpdatePanel>

</asp:Content>

