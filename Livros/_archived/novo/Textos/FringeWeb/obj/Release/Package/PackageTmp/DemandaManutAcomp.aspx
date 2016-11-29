<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DemandaManutAcomp.aspx.cs" Inherits="MVApp.DemandaManutAcomp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Informações sobre andamento</h6></div>

<table id="mainTbl">
<tr>
<td valign="middle" class="style2">
    
    <table style="width: 743px" >
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td style="height: 29px;" colspan="5">
                <asp:Literal  ID="LitRel" runat="server"></asp:Literal>
            </td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="2" >
                <asp:Button ID="BtnLimp" runat="server" CssClass="blueB" 
                            onclick="BtnLimp_Click" Text="Limpar campos" />
            </td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                    &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
            Data
            </td>
            <td colspan="2" >
                <input type="text" class="datepicker" id="TxtDtPrazo" runat="server" 
                    disabled="disabled" readonly="readonly"/>
            </td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="2" >
                Descrição</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="5" >
                <asp:TextBox ID="TxtDesc" runat="server"  Height="98px" 
                    MaxLength="1000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="2" >
                Ofício</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="5" >
                <asp:TextBox ID="TxtOficio" runat="server"  Height="98px" 
                    MaxLength="1000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="2" >
                News</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="5" >
                <asp:TextBox ID="TxtNews" runat="server"  Height="98px" 
                    MaxLength="1000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                </td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="2" >
                Matéria</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" colspan="5" >
                <asp:TextBox ID="TxtMat" runat="server"  Height="98px" 
                    MaxLength="1000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td colspan="2" >
                <asp:Button ID="BtnSalvar" runat="server" CssClass="blueB" 
                    onclick="BtnSalvar_Click" Text="Salvar" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="ui-accordion" style="width: 22%" >
                <asp:Button ID="BtnVoltar" runat="server" CssClass="blueB" 
                    onclick="BtnVoltar_Click" Text="Voltar" />
            </td>
            <td class="datepicker" style="width: 79%" >
                <asp:CheckBox ID="ChkImp" runat="server" Text="Encaminhar para imprensa" />
            </td>
            <td style="width: 331px" >
                    <asp:DropDownList ID="CboImp" runat="server" Width="210px">
                    </asp:DropDownList>
            </td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25px" >
                &nbsp;</td>
            <td class="navigation_button" style="width: 108px" >
                &nbsp;</td>
            <td style="width: 287px" >
                &nbsp;</td>
            <td class="ui-accordion" style="width: 22%" >
                &nbsp;</td>
            <td class="datepicker" style="width: 79%" >
                &nbsp;</td>
            <td style="width: 331px" >
                &nbsp;</td>
            <td style="width: 3px" >
                &nbsp;</td>
        </tr>
    </table>
    </td>

    </tr>

    </table>
    </div>
</fieldset>
</form>    

</ContentTemplate>

</asp:Content>
