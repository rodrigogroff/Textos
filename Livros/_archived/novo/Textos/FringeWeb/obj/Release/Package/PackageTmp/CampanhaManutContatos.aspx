<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CampanhaManutContatos.aspx.cs" Inherits="MVApp.CampanhaManutContatos" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>
                Contatos de campanha</h6></div>
            <table id="mainTbl" width="850px">
            <tr>
            <td style="width: 25px;">
                &nbsp;</td>
            <td style="width: 94px;">
                &nbsp;</td>
            <td style="width: 266px;">
                                    &nbsp;</td>
            <td style="width: 20px;">
                                    &nbsp;</td>
            <td style="width: 206px;">
                                    &nbsp;</td>
            <td style="width: 30px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px;">
                &nbsp;</td>
            <td style="width: 94px;">
                Campanha</td>
            <td style="width: 266px;">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" Enabled="False"></asp:TextBox>
            </td>
            <td style="width: 20px;">
                                    &nbsp;</td>
            <td colspan="2">
                <asp:Literal ID="LitConts" runat="server"></asp:Literal>
                </td>
            </tr>
                <tr>
                    <td style="width: 25px;">
                        &nbsp;</td>
                    <td colspan="2">
                        <table>
                            <tr>
                            <td style="width: 259px">
                            <asp:CheckBox ID="ChkOcult" runat="server" AutoPostBack="True" 
                                          oncheckedchanged="ChkOcult_CheckedChanged" 
                                          Text="Ocultar contatos já confirmados" />
                            </td>
                            </tr>
                            <tr>
                                <td style="width: 259px">
                                    <asp:CheckBox ID="ChkSemTel" runat="server" AutoPostBack="True" 
                                        oncheckedchanged="ChkOcult_CheckedChanged" 
                                        Text="Ocultar contatos sem telefone" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 259px">
                                    <asp:CheckBox ID="ChkSemCargo" runat="server" AutoPostBack="True" 
                                        oncheckedchanged="ChkOcult_CheckedChanged" Text="Ocultar contatos sem cargo" />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 20px;">
                        &nbsp;</td>
                    <td colspan="2">
                        <a href="CadListagem.aspx" target="_blank">
                        <img src="images/lupa.png" title='Buscar pessoas' 
                            style='border-width: 0;width:16px;heigth:16px'  />
                        </a>
                    </td>
                </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td colspan="4" valign="top">
                <br />
                Contatos disponíveis:
                <br />
                <asp:Literal ID="LitTot" runat="server"></asp:Literal>
                <br />
                <br />
                <asp:Panel ID="PnlEdit" runat="server" Height="120px" ScrollBars="Vertical" 
                    BackColor="#F4F4F4">
                    <asp:Literal ID="LitCont" runat="server"></asp:Literal>
                    <br />
                </asp:Panel>
                <br />
                <br />
                </td>

            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td colspan="2"><i>Obs.: Contatos em negrito estão ainda pendentes</i>
                &nbsp;</td>
            <td style="width: 20px">
                &nbsp;</td>
            <td style="width: 206px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 266px">
                    &nbsp;</td>
            <td style="width: 20px">
                &nbsp;</td>
            <td style="width: 206px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 25px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 266px">
                    &nbsp;</td>
            <td style="width: 20px">
                &nbsp;</td>
            <td style="width: 206px">
                &nbsp;</td>
            <td style="width: 30px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</ContentTemplate>
</asp:UpdatePanel>

</asp:Content>
