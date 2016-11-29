<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CampRecManut.aspx.cs" Inherits="MVApp.CampRecManut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal ID="LitRes" runat="server"></asp:Literal>  
<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Recebimento de material</h6></div>
            <table id="mainTbl" width="850px">
            <tr>
            <td style="width: 24px" rowspan="11" valign="top">
                &nbsp;</td>
            <td style="width: 190px;">
                &nbsp;</td>
            <td style="width: 271px;">
                                    &nbsp;</td>
            <td style="width: 16px;">
                                    &nbsp;</td>
            <td style="width: 131px;">
                                    &nbsp;</td>
            <td style="width: 312px;">
                                    &nbsp;</td>
            <td style="width: 56px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px;">
                Contato</td>
            <td style="width: 271px;">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" Enabled="False"></asp:TextBox>
            </td>
            <td style="width: 16px;">
                                    &nbsp;</td>
            <td style="width: 131px;">
                                    &nbsp;</td>
            <td style="width: 312px;">
                                    &nbsp;</td>
            <td style="width: 56px;">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                Material</td>
            <td style="width: 271px">
                                    <asp:TextBox ID="TxtMat" runat="server" 
                    MaxLength="60"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                    Enabled="False"></asp:TextBox>
                </td>
            <td style="width: 16px">
                                    &nbsp;</td>
            <td style="width: 131px">
                Ano campanha</td>
            <td style="width: 312px">

                                <asp:TextBox ID="TxtAno" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" Enabled="False" ></asp:TextBox>
                </td>
            <td style="width: 56px">
                                    &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                Total solicitado</td>
            <td style="width: 271px">

                                <asp:TextBox ID="TxtMatSol" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" 
                                    Enabled="False" ></asp:TextBox>
                            </td>
            <td style="width: 16px">

                                &nbsp;</td>
            <td style="width: 131px">

                                Total recebido</td>
            <td style="width: 312px">

                                <asp:TextBox ID="TxtTotMatRec" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" Enabled="False" ></asp:TextBox>
                            </td>
            <td style="width: 56px">

                                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 271px">

                                &nbsp;</td>
            <td style="width: 16px">

                                &nbsp;</td>
            <td style="width: 131px">

                                &nbsp;</td>
            <td style="width: 312px">

                                &nbsp;</td>
            <td style="width: 56px">

                                &nbsp;</td>
            </tr>
            <tr>
            <td colspan="2" style="color: #3399FF">
                <strong>Recebimento parcial</strong></td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                Tipo envio</td>
            <td style="width: 271px">
                                <asp:DropDownList ID="CboTipo" runat="server" Width="210px">
                                    <asp:ListItem>(Selecione)</asp:ListItem>
                                    <asp:ListItem>Correio</asp:ListItem>
                                    <asp:ListItem>Em mãos</asp:ListItem>
                                    <asp:ListItem>Rodoviária</asp:ListItem>
                                </asp:DropDownList>
                            </td>
            <td style="width: 16px">
                                &nbsp;</td>
            <td style="width: 131px">
                                &nbsp;</td>
            <td style="width: 312px">
                                &nbsp;</td>
            <td style="width: 56px">
                                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 271px">
                                &nbsp;</td>
            <td style="width: 16px">
                                &nbsp;</td>
            <td style="width: 131px">
                                &nbsp;</td>
            <td style="width: 312px">
                                &nbsp;</td>
            <td style="width: 56px">
                                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                Qtd. recebido</td>
            <td style="width: 271px">

                                <asp:TextBox ID="TxtMatRec" runat="server"  
                                mask="999999999" MaxLength="9" onkeypress="return formataCampos( event,this );"
                                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                                    
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';" ></asp:TextBox>
                            </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                &nbsp;</td>
            <td style="width: 271px">

                                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 190px">
                Encerrar recebimento?</td>
            <td style="width: 271px">
                <asp:CheckBox ID="ChkFim" runat="server" Text="Sim" />
                </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="BtnUpdate" runat="server" CssClass="blueB" Text="Confirmar recebimento" 
                    onclick="BtnUpdate_Click" style="text-align: right" />
                </td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="5">
                <asp:Literal ID="LitMatHist" runat="server"></asp:Literal>
                </td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            <tr>
            <td style="width: 24px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td style="width: 16px">
                &nbsp;</td>
            <td style="width: 131px">
                &nbsp;</td>
            <td style="width: 312px">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            </tr>
            </table>
        </div>
    </fieldset>
</form>        

</asp:Content>

