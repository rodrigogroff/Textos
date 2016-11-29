<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SuporteManut.aspx.cs" Inherits="MVApp.SuporteManut" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<cc1:ToolkitScriptManager ID="ScriptManager1" runat="server" EnableScriptLocalization="true" EnableScriptGlobalization="true" />

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>  

<form action="" class="form">

<fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>
                Dados do chamado</h6></div>
            <table id="mainTbl" style="width: 690px" >
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
            </td>
            <td style="width: 215px" >
            </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
            </td>
            <td style="width: 213px" >
            </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                Código</td>
            <td style="width: 215px" >
                <asp:TextBox ID="TxtCod" runat="server"  enabled="false"
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
            </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                Versão</td>
            <td style="width: 213px" >
                <asp:TextBox ID="TxtVer" runat="server"  enabled="false"
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
            </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                Dt. abertura</td>
            <td style="width: 215px" >
                <asp:TextBox ID="TxtDtIni" runat="server"  enabled="false"
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
            </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                        Cliente</td>
            <td style="width: 213px" >
                <asp:TextBox ID="TxtCliente" runat="server"  enabled="false"
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>

                        </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
                <tr>
                    <td style="width: 20px">
                        &nbsp;</td>
                    <td style="width: 104px">
                        &nbsp;</td>
                    <td colspan="4">
                        &nbsp;</td>
                    <td style="width: 28px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 20px">
                        &nbsp;</td>
                    <td colspan="5">
                Descrição do chamado</td>
                    <td style="width: 28px">
                        &nbsp;</td>
                </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td valign="middle" colspan="5" >
                <asp:TextBox ID="TxtAssunto" runat="server"  Height="140px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
                <br />
            </td>
            <td style="width: 28px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                Situação</td>
            <td style="width: 215px" >
                <asp:TextBox ID="TxtSit" runat="server"  enabled="false"
                    mask="99:99" MaxLength="5" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    onkeypress="return formataCampos( event,this );"></asp:TextBox>
                                    </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                    &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                Prioridade</td>
            <td style="width: 215px" >
                    <asp:DropDownList ID="CboPriPesq" runat="server" Width="210px">
                        <asp:ListItem>(Selecione)</asp:ListItem>
                        <asp:ListItem>Baixa</asp:ListItem>
                        <asp:ListItem>Normal</asp:ListItem>
                        <asp:ListItem>Alta</asp:ListItem>
                        <asp:ListItem>Emergêncial</asp:ListItem>
                    </asp:DropDownList>
                                </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                Tipo</td>
            <td style="width: 213px" >
                    <asp:DropDownList ID="CboTipo" runat="server" Width="210px">
                    </asp:DropDownList>
                                </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                Projeto</td>
            <td style="width: 215px" >
                    <asp:DropDownList ID="CboProj" runat="server" Width="210px">
                    </asp:DropDownList>
                                </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                Módulo</td>
            <td style="width: 213px" >
                    <asp:DropDownList ID="CboMdl" runat="server" Width="210px">
                    </asp:DropDownList>
                                </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                Nova situação</td>
            <td style="width: 215px" >
                    <asp:DropDownList ID="CboSit" runat="server" Width="210px">
                        <asp:ListItem>Em espera</asp:ListItem>
                        <asp:ListItem>Em andamento</asp:ListItem>
                        <asp:ListItem>Atendido</asp:ListItem>
                        <asp:ListItem>Não atendido</asp:ListItem>
                        <asp:ListItem>Cancelado</asp:ListItem>
                        <asp:ListItem>Fechado</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                Comentário</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td colspan="5" >
                <asp:TextBox ID="TxtComent" runat="server"  Height="140px" 
                    MaxLength="5000" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                <asp:Button ID="BtnSalvarComentario" runat="server" CssClass="blueB" 
                    onclick="BtnSalvarComentario_Click" Text="Salvar" />
            </td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 104px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>
        </table>
</div>
</fieldset>

<br /><asp:Literal  ID="LitHist" runat="server"></asp:Literal><br />

<fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>
                Documentos / Imagens</h6></div>
            <table id="Table2" style="width: 690px" >
        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 124px" >
            </td>
            <td style="width: 215px" >
            </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
            </td>
            <td style="width: 213px" >
            </td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 124px" >
                Arquivo</td>
            <td style="width: 215px" >
                <asp:FileUpload ID="FileUploadArq" runat="server"  />
            </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 124px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 124px" >
                Descrição</td>
            <td style="width: 215px" >
                <asp:TextBox ID="TxtMotivArq" runat="server"  MaxLength="150" 
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 124px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 124px" >
                &nbsp;</td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td style="width: 124px" >
                <asp:Button ID="BtnSaveImg" runat="server" CssClass="blueB" 
                    onclick="BtnSaveImg_Click" Text="Incluir" />
            </td>
            <td style="width: 215px" >
                &nbsp;</td>
            <td style="width: 21px"  >
                &nbsp;</td>
            <td style="width: 94px" >
                &nbsp;</td>
            <td style="width: 213px" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        <tr>
            <td style="width: 20px" >
                &nbsp;</td>
            <td colspan="5" >
                &nbsp;</td>
            <td style="width: 28px" >
                &nbsp;</td>
        </tr>

        </table>
</div>
</fieldset>

<br /><asp:Literal  ID="LitDocs" runat="server" Text="-Nenhum documento anexado;"></asp:Literal><br />

</form>

</asp:Content>
