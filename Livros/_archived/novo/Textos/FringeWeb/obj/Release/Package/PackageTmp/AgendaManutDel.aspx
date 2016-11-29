<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AgendaManutDel.aspx.cs" Inherits="MVApp.AgendaManutDel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="SingleColumnContent" runat="server">

<asp:Literal  ID="LitRes" runat="server"></asp:Literal>

    <br />
    <br />

<asp:Button ID="BtnConf" runat="server" Text="Confirmar remoção de item na agenda" CssClass="blueB" 
        onclick="BtnConf_Click" /> 

</asp:Content>

