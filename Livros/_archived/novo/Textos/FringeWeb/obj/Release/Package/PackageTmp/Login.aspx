<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostBack="true" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="htmlLogin">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
<title>Gabinete digital</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/util.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script> 
<script type="text/javascript" src="js/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/plugins/charts/jquery.sparkline.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uniform.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.cleditor.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.autosize.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.dualListBox.js"></script>
<script type="text/javascript" src="js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/chosen.jquery.min.js"></script>

<script type="text/javascript" src="js/plugins/wizard/jquery.form.js"></script>
<script type="text/javascript" src="js/plugins/wizard/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/wizard/jquery.form.wizard.js"></script>

<script type="text/javascript" src="js/plugins/uploader/plupload.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.html5.js"></script>
<script type="text/javascript" src="js/plugins/uploader/plupload.html4.js"></script>
<script type="text/javascript" src="js/plugins/uploader/jquery.plupload.queue.js"></script>

<script type="text/javascript" src="js/plugins/tables/datatable.js"></script>
<script type="text/javascript" src="js/plugins/tables/tablesort.min.js"></script>
<script type="text/javascript" src="js/plugins/tables/resizable.min.js"></script>

<script type="text/javascript" src="js/plugins/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.progress.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.colorpicker.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.breadcrumbs.js"></script>
<script type="text/javascript" src="js/plugins/ui/jquery.sourcerer.js"></script>

<script type="text/javascript" src="js/plugins/jquery.fullcalendar.js"></script>
<script type="text/javascript" src="js/plugins/jquery.elfinder.js"></script>

<script type="text/javascript" src="js/custom.js"></script>

</head>

<body class="nobg loginPage" id="bdyLogin" runat="server">

<!-- Top fixed navigation 
<div class="topNav">
    <div class="wrapper">
        <div class="userNav">
            <ul>
                <li><a href="http://www.marchezan.com.br/" title=""><img src="images/icons/topnav/mainWebsite.png" alt="" /><span>Website</span></a></li>
                <li><a href="Suporte/Login.aspx?emp=2" target="_blank" title=""><img src="images/icons/topnav/profile.png" alt="" /><span>Suporte</span></a></li>
            </ul>
        </div>
    </div>
</div>
-->

<!-- Main content wrapper -->
<div class="loginWrapper">
    <div class="loginLogo"><img src="images/loginLogo.png" alt="" /></div>
    <br />
    <div class="widget">
        <div class="title"><img src="images/icons/dark/files.png" alt="" class="titleIcon" /><h6>Acesso restrito</h6></div>
        <form id="validate" class="form" runat="server">
            <fieldset>
                <div class="formRow">
                    <label for="login">Usuário</label>
                    <div class="loginInput"><asp:TextBox ID="TxtUser" runat="server" Width="70px"></asp:TextBox></div>
                </div>

                <div class="formRow">
                    <label for="login">Senha</label>
                    <div class="loginInput"><asp:TextBox ID="TxtSenha" TextMode="Password" runat="server" Width="70px"></asp:TextBox></div>
                </div>
                
                <div class="formRow">
                    <label for="pass">Gabinete</label>
                    <div class="loginInput">
                        <asp:DropDownList ID="CboGab" runat="server"  Width="210px"></asp:DropDownList>
                    </div>
                </div>
                
                <div class="loginControl">
                    <div class="rememberMe"></div>
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" class="dblueB logMeIn" 
                        onclick="BtnLogin_Click1"></asp:Button>
                    <br />
                    <br />
<asp:Literal  ID="LitRes" runat="server"></asp:Literal>


                </div>
            </fieldset>
        </form>
    </div>
</div>    

<br />


</body>

</html>
