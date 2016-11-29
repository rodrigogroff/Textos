<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AdmUserManut.aspx.cs" Inherits="MVApp.AdmUserManut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Dados do usuário</h6></div>
            <table id="mainTbl" width='600px'>
            <tr>
            <td style="width: 24px" rowspan="10" valign="top">
                &nbsp;</td>
            <td style="width: 133px;">
                &nbsp;</td>
            <td style="width: 148px;">
                                    &nbsp;</td>
            <td style="width: 43px; ">
                                    &nbsp;</td>
            <td style="width: 98px; ">
                &nbsp;</td>
            <td style="width: 229px; ">

                &nbsp;</td>
            <td style="width: 43px; " class="xyz">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px;">
                Nome</td>
            <td style="width: 148px;">
                                    <asp:TextBox ID="TxtNome" runat="server" Width="180px" 
                    MaxLength="29"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 43px; ">
                                    </td>
            <td style="width: 98px; ">
                Ativo</td>
            <td style="width: 229px; ">

            <asp:DropDownList ID="CboAtivo" runat="server" Width="210px">
                <asp:ListItem>Não</asp:ListItem>
                <asp:ListItem>Sim</asp:ListItem>
            </asp:DropDownList>
            
            </td>
            <td style="width: 43px; " class="xyz">
                </td>
            </tr>
            <tr>
            <td style="width: 133px">
                Login</td>
            <td style="width: 148px">
                                    <asp:TextBox ID="TxtLogin" runat="server" Width="180px" 
                    MaxLength="29" 
                            
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 43px">
                                    &nbsp;</td>
            <td style="width: 98px">
                Email</td>
            <td style="width: 229px">
                                    <asp:TextBox ID="TxtEmail" runat="server" Width="180px" 
                    MaxLength="29" 
                            
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
            </td>
            <td style="width: 43px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px">
                Telefone</td>
            <td style="width: 148px">
                                    <asp:TextBox ID="TxtTelefone" runat="server" Width="180px" 
                    MaxLength="29" 
                    mask="(99) 9999-99999" onkeypress="return formataCampos( event,this );"
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 43px">
                &nbsp;</td>
            <td style="width: 98px">
                Municipio</td>
            <td style="width: 229px">
                                    <asp:TextBox ID="TxtMunicipio" runat="server" Width="180px" 
                    MaxLength="29" 
                            
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
            <td style="width: 43px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px">
                Perfil</td>
            <td colspan="4">
                <asp:DropDownList ID="CboPerf" runat="server" AutoPostBack="True" Width="210px" 
                    onselectedindexchanged="CboPerf_SelectedIndexChanged">
                </asp:DropDownList>
            &nbsp;
            </td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px">
                Acesso</td>
            <td colspan="4">
                <asp:Button ID="BtnLimparAcesso" runat="server" CssClass="blueB" 
                    Text="Limpar permissões" onclick="BtnLimparAcesso_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnMarcarTudo" runat="server" CssClass="blueB" 
                    Text="Marcar tudo" onclick="BtnMarcarTudo_Click" />
                <br />
                <br />
                <asp:CheckBoxList ID="ChkMdls" runat="server">
                </asp:CheckBoxList>
            </td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px">
                &nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 133px">
                Categorias</td>
            <td colspan="4">
                <asp:CheckBoxList ID="ChkCategs" runat="server">
                </asp:CheckBoxList>
            </td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            <td style="width: 98px">
                &nbsp;</td>
            <td style="width: 229px">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td style="width: 133px">
                <strong>Foto</strong></td>
            <td style="width: 148px">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            <td style="width: 98px">
                Currículo</td>
            <td style="width: 229px">
                <asp:Literal  ID="LitCV" runat="server" Text="<span style='Color: Red'>-Nenhum CV encontrado!</span>"></asp:Literal>
                </td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                <br />
                <asp:FileUpload ID="FileUploadFotoCapa" runat="server"  
                    Width="70px" />
                <br />
                <br />
                <asp:Literal  ID="LitFoto" runat="server"></asp:Literal>
                <br />
                </td>
            <td style="width: 43px">
                &nbsp;</td>
            <td colspan="2" valign="top">
                <br />
                <asp:FileUpload ID="FileUploadCV" runat="server"  
                    Width="140px" />
                <br />
                </td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            <td style="width: 98px">
                &nbsp;</td>
            <td style="width: 229px">
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
                <asp:Button ID="BtnLimparSenha" runat="server" CssClass="blueB" 
                    Text="Limpar senha" onclick="BtnLimparSenha_Click" Visible="False" />
                </td>
            <td style="width: 43px">
                &nbsp;</td>
            <td colspan="2" align="right">
                &nbsp;
                </td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
            <td style="width: 43px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>

    <br />
    <br />
    <div id='esc_filter'>
        <a id='a_filter' style="color: Green" onclick="document.getElementById('div_filter').style.display='block';document.getElementById('esc_filter').style.display='none';">(Histórico do usuário...)</a>
    </div>

    <div id='div_filter' style='display:none;'>

    <asp:Panel ID="PnlInfo" runat="server" Visible="false">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>
                Histórico do usuário</h6></div>
            <table >
            <tr>
            <td style="width: 24px" rowspan="12" valign="top">
                &nbsp;</td>
            <td colspan="5">
                &nbsp;</td>
            <td style="width: 36px">
                &nbsp;</td>
                <td style="width: 64px">
                    &nbsp;</td>
            </tr>

                <tr>
                    <td colspan="5">
                        Novas informações sobre funcionário<br />
                        <br />
                        <asp:TextBox ID="TxtMsg" runat="server" Enabled="False" Height="66px" 
                            MaxLength="29" OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                            OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                            TextMode="MultiLine" Width="460px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td style="width: 64px">
                        &nbsp;</td>
                </tr>

            <tr>
            <td style="width: 88px">

                <asp:Button ID="BtnSalvarMsg" runat="server" class="blueB" Text="Salvar" 
                                        onclick="BtnSalvarMsg_Click" Visible="False" CssClass="blueB" />

                                    </td>
            <td style="width: 148px">
                                    &nbsp;</td>
            <td style="width: 43px">
                                    &nbsp;</td>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 229px">
                &nbsp;</td>
            <td style="width: 36px">
                &nbsp;</td>
                <td style="width: 64px">
                    &nbsp;</td>
            </tr>

            <tr>
            <td style="width: 88px">
                </td>
            <td style="width: 148px">
                                    &nbsp;</td>
            <td style="width: 43px">
                                    &nbsp;</td>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 229px">
                &nbsp;</td>
            <td style="width: 36px">
                &nbsp;</td>
                <td style="width: 64px">
                    &nbsp;</td>
            </tr>

            <tr>
            <td colspan="5">
                <asp:Literal  ID="LitInfo" runat="server"></asp:Literal>
                </td>
            <td style="width: 36px">
                &nbsp;</td>
                <td style="width: 64px">
                    &nbsp;</td>
            </tr>

            <tr>
            <td style="width: 88px">
                &nbsp;</td>
            <td style="width: 148px">
                                    &nbsp;</td>
            <td style="width: 43px">
                                    &nbsp;</td>
            <td style="width: 69px">
                &nbsp;</td>
            <td style="width: 229px">
                &nbsp;</td>
            <td style="width: 36px">
                &nbsp;</td>
                <td style="width: 64px">
                    &nbsp;</td>
            </tr>

        </table>
        </div>
    </fieldset>

    <br />
    <a style="color: Green" onclick="document.getElementById('div_filter').style.display='none';document.getElementById('esc_filter').style.display='block'">(Ocultar histórico)</a>

</asp:Panel>

</form>        

</asp:Content>

