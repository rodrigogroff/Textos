<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MailList.aspx.cs" Inherits="MVApp.MailList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">
    <br />
    <br />
    <h6>Listagem de emails</h6>
    <br />
    <asp:TextBox ID="TxtMail" runat="server" MaxLength="99000" Height="500px" TextMode="MultiLine" Width="900px"></asp:TextBox>
    <br />
    <br />
</asp:Content>
