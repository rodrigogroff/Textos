<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Suporte.aspx.cs" Inherits="MVApp.Suporte" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<script type="text/javascript">
    $(function () {
        $("#tabContainer").tabs();
        var currTab = $("#<%= HFCurrTabIndex.ClientID %>").val();
        $("#tabContainer").tabs({ selected: currTab });
    });
</script>

<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Gerenciamento de software</h6></div>
            <table id="Table2" width="1050px">
            <tr>
                <td>
                    <div id="tabContainer" class="tabs">
                        <asp:HiddenField ID="HFCurrTabIndex" runat="server" Value="0" />
                        <ul>
                            <li><a href="#tabs-1">Novo chamado</a></li>
                            <li><a href="#tabs-2">Chamados na fila</a></li>
                            <li><a href="#tabs-3">Meus chamados</a></li>
                            <li><a href="#tabs-4">Histórico acompanhamentos</a></li>
                        </ul>

                        <div id="tabs-1">
                        <table id="Table2">
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'></td>
                            <td style="width: 119px">Tipo</td>
                            <td width='120px'>
                <asp:DropDownList ID="CboTipoSup" runat="server" Width="210px">
                </asp:DropDownList>
                                </td>
                            <td style="width: 22px"></td>
                            <td width='90px'>Versão </td>
                            <td width='120px'>
                <asp:TextBox ID="TxtVerAtu" runat="server" 
                    MaxLength="200" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';">1.0</asp:TextBox>
                                </td>
                            <td style="width: 33px"></td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                            </td>
                        </tr>
                        <tr>
                            <td width='12px' style="height: 14px"></td>
                            <td style="width: 119px; height: 14px;"></td>
                            <td width='120px' style="height: 14px">
                                </td>
                            <td style="width: 22px; height: 14px;"></td>
                            <td width='90px' style="height: 14px"></td>
                            <td width='120px' style="height: 14px">
                                </td>
                            <td style="width: 33px; height: 14px;"></td>
                            <td style="width: 104px; height: 14px;"></td>
                            <td style="width: 34px; height: 14px;">
                                </td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">Projeto</td>
                            <td width='120px'>
                <asp:DropDownList ID="CboProjSup" runat="server" Width="210px">
                </asp:DropDownList>
                            </td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>Módulo</td>
                            <td width='120px'>
                <asp:DropDownList ID="CboMdlSup" runat="server" Width="210px">
                </asp:DropDownList>
                            </td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">Prioridade</td>
                            <td width='120px'>
                <asp:DropDownList ID="CboPri" runat="server" Width="210px">
                    <asp:ListItem>(Selecione)</asp:ListItem>
                    <asp:ListItem>Baixa</asp:ListItem>
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Alta</asp:ListItem>
                    <asp:ListItem>Emergêncial</asp:ListItem>
                </asp:DropDownList>
                                </td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">Descrição</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td colspan="7">
                <asp:TextBox ID="TxtDesc" runat="server"  Height="103px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px"><asp:Button ID="BtnNovoChamado" runat="server" Text="Salvar" CssClass="blueB" onclick="BtnNovoChamado_Click" /></td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 34px">
                                &nbsp;</td>
                        </tr>
                        </table>
                    </div>

                    <div id="tabs-2">

                        <table id="Table2">
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">Código</td>
                            <td width='120px'>
                                <asp:TextBox ID="TxtCodigo" runat="server" MaxLength="20" 
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                                </td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px' colspan="2">
                                <asp:CheckBox ID="ChkAnd" runat="server" Checked="True" 
                                    Text="Incluir chamados em andamento" />
                            </td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'></td>
                            <td style="width: 119px">Situação</td>
                            <td width='120px'>
                <asp:DropDownList ID="CboSit" runat="server" Width="210px">
                    <asp:ListItem>Em espera</asp:ListItem>
                    <asp:ListItem>Em andamento</asp:ListItem>
                    <asp:ListItem>Atendido</asp:ListItem>
                    <asp:ListItem>Não atendido</asp:ListItem>
                    <asp:ListItem>Cancelado</asp:ListItem>
                    <asp:ListItem>Fechado</asp:ListItem>
                </asp:DropDownList>
                                </td>
                            <td style="width: 22px"></td>
                            <td width='90px'>Tipo</td>
                            <td width='120px' colspan="3">
                <asp:DropDownList ID="CboTipo" runat="server" Width="210px">
                </asp:DropDownList>
                            </td>
                            <td style="width: 226px">
                            </td>
                        </tr>
                        <tr>
                            <td width='12px' style="height: 14px"></td>
                            <td style="width: 119px; height: 14px;"></td>
                            <td width='120px' style="height: 14px">
                                </td>
                            <td style="width: 22px; height: 14px;"></td>
                            <td width='90px' style="height: 14px"></td>
                            <td width='120px' style="height: 14px">
                                </td>
                            <td style="width: 33px; height: 14px;"></td>
                            <td style="width: 104px; height: 14px;"></td>
                            <td style="width: 226px; height: 14px;">
                                </td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">Projeto</td>
                            <td width='120px'>
                <asp:DropDownList ID="CboProj" runat="server" Width="210px">
                </asp:DropDownList>
                            </td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>Módulo</td>
                            <td width='120px'>
                <asp:DropDownList ID="CboMdl" runat="server" Width="210px">
                </asp:DropDownList>
                            </td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">Prioridade</td>
                            <td width='120px'>
                                <asp:DropDownList ID="CboPriPesq" runat="server" Width="210px">
                                    <asp:ListItem>(Selecione)</asp:ListItem>
                                    <asp:ListItem>Baixa</asp:ListItem>
                                    <asp:ListItem>Normal</asp:ListItem>
                                    <asp:ListItem>Alta</asp:ListItem>
                                    <asp:ListItem>Emergêncial</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px"><asp:Button ID="BtnPesq" runat="server" Text="Pesquisar" CssClass="blueB" onclick="BtnPesq_Click1" /></td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td colspan="8"><asp:Literal ID="LitRes" runat="server"></asp:Literal></td>
                        </tr>
                        <tr>
                            <td width='12px'>&nbsp;</td>
                            <td style="width: 119px">&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 22px">&nbsp;</td>
                            <td width='90px'>&nbsp;</td>
                            <td width='120px'>
                                &nbsp;</td>
                            <td style="width: 33px">&nbsp;</td>
                            <td style="width: 104px">&nbsp;</td>
                            <td style="width: 226px">
                                &nbsp;</td>
                        </tr>
                        </table>

                    </div>
               
                      <div id="tabs-3">

                            <table id="Table2">
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td colspan="8"><asp:Literal ID="LitMeusChamados" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 33px">&nbsp;</td>
                                <td style="width: 104px">&nbsp;</td>
                                <td style="width: 404px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 33px">&nbsp;</td>
                                <td style="width: 104px">&nbsp;</td>
                                <td style="width: 404px">
                                    &nbsp;</td>
                            </tr>
                            </table>

                        </div>

                         <div id="tabs-4">

                            <table id="Table2">
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td colspan="8"><asp:Literal ID="LitHist" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 33px">&nbsp;</td>
                                <td style="width: 104px">&nbsp;</td>
                                <td style="width: 404px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td width='12px'>&nbsp;</td>
                                <td style="width: 119px">&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td width='90px'>&nbsp;</td>
                                <td width='120px'>
                                    &nbsp;</td>
                                <td style="width: 33px">&nbsp;</td>
                                <td style="width: 104px">&nbsp;</td>
                                <td style="width: 404px">
                                    &nbsp;</td>
                            </tr>
                            </table>

                        </div>
                    </div>
                </td>
            </tr>
            </table>
        </div>
    </fieldset>       
</form>

</asp:Content>
