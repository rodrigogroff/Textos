<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Folder.aspx.cs" Inherits="MVApp.Folder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">


<form action="" class="form">
    <fieldset>
        <div class="widget">
            <div class="title"><img src="images/icons/dark/list.png" alt="" class="titleIcon" /><h6>Pastas de arquivos</h6></div>

            <table id="tbl1" width="800px">
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">&nbsp;&nbsp;</td>
                <td style="width: 84px">&nbsp;</td>
                <td style="width: 83px">&nbsp;</td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td style="width: 84px">&nbsp;</td>
                <td style="width: 83px">&nbsp;</td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">Nova pasta</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td style="width: 84px">Novo upload</td>
                <td style="width: 83px">&nbsp;</td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">
                                    <asp:TextBox ID="TxtNome" runat="server" 
                    MaxLength="200"                             
                    OnBlur="this.style.borderColor='';this.style.borderStyle='';" 
                    OnFocus="this.style.borderColor='orange';this.style.borderStyle='solid';"></asp:TextBox>
                </td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">
                <asp:Button ID="BtnNovaPasta" runat="server" CssClass="blueB" Text="Salvar" 
                    onclick="BtnNovaPasta_Click" style="text-align: right" />
                </td>
                <td style="width: 84px">
                    <asp:FileUpload ID="FileUploadFotoCapa" runat="server" />
                </td>
                <td style="width: 83px">
                <asp:Button ID="BtnUpload" runat="server" CssClass="blueB" Text="Upload" 
                    onclick="BtnUpload_Click" style="text-align: right" />
                </td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td style="width: 84px">&nbsp;</td>
                <td style="width: 83px">&nbsp;</td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td colspan="5">
                    <asp:Literal ID="LitPath" runat="server"></asp:Literal>
                </td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td style="width: 84px">&nbsp;</td>
                <td style="width: 83px">&nbsp;</td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td colspan="5">
                    <asp:Literal ID="LitContent" runat="server"></asp:Literal>
                </td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td style="width: 84px">&nbsp;</td>
                <td style="width: 83px">&nbsp;</td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 14px">&nbsp;</td>
                <td style="width: 157px">&nbsp;</td>
                <td style="width: 20px">&nbsp;</td>
                <td style="width: 43px">&nbsp;</td>
                <td style="width: 84px">&nbsp;</td>
                <td style="width: 83px">&nbsp;</td>
                <td style="width: 11px">&nbsp;</td>
            </tr>
            </table>

        </div>
    </fieldset>
</form>        


</asp:Content>

