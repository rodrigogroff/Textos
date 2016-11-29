/* funcoes em javascript                 */

function toggle_visibility(id) {
    var e = document.getElementById(id);
    if (e.style.display == 'block')
        e.style.display = 'none';
    else {
        e.style.display = 'block';
    }
}


function numbersonly(objTextBox, e) {
    var sep = 0;
    var key = '';
    var SeparadorMilesimo = '.';
    var SeparadorDecimal = ',';
    var i = j = 0;
    var len = len2 = 0;
    var strCheck = '0123456789';
    var aux = aux2 = '';
    var whichCode = (window.addEventListener) ? e.which : e.keyCode;
    if (whichCode > 95 && whichCode < 106)
        whichCode -= 48;

    // 13=enter, 8=backspace as demais retornam 0(zero)
    // whichCode==0 faz com que seja possivel usar todas as teclas como delete, setas, etc
    //if ((whichCode == 13) || (whichCode == 0) || (whichCode == 8))
    if ((whichCode == 13) || (whichCode == 0) || (whichCode == 9))
        return true;
    key = String.fromCharCode(whichCode); // Valor para o código da Chave

    len = objTextBox.value.length;

    if (whichCode != 8) {
        if (strCheck.indexOf(key) == -1)
            return false; // Chave inválida
        if (len >= objTextBox.getAttribute("MaxLength"))
            return false;

    }

    if (whichCode != 8) {
        aux += key;

        if (objTextBox.value == "0")
            objTextBox.value = "";

        objTextBox.value += aux;
    }
    else {
        objTextBox.value = objTextBox.value.substr(0, objTextBox.value.length - 1);
    }

    return false;
}

function formataMoeda(objTextBox, e) {
    var sep = 0;
    var key = '';
    var SeparadorMilesimo = '.';
    var SeparadorDecimal = ',';
    var i = j = 0;
    var len = len2 = 0;
    var strCheck = '0123456789';
    var aux = aux2 = '';
    var whichCode = (window.addEventListener) ? e.which : e.keyCode;
    if (whichCode > 95 && whichCode < 106)
        whichCode -= 48;

    // 13=enter, 8=backspace as demais retornam 0(zero)
    // whichCode==0 faz com que seja possivel usar todas as teclas como delete, setas, etc
    //if ((whichCode == 13) || (whichCode == 0) || (whichCode == 8))
    if ((whichCode == 13) || (whichCode == 0) || (whichCode == 9))
        return true;
    key = String.fromCharCode(whichCode); // Valor para o código da Chave

    len = objTextBox.value.length;

    if (whichCode != 8) {
        if (strCheck.indexOf(key) == -1)
            return false; // Chave inválida
        if (len >= objTextBox.getAttribute("MaxLength"))
            return false;

    }

    for (i = 0; i < len; i++)
        if ((objTextBox.value.charAt(i) != '0') && (objTextBox.value.charAt(i) != SeparadorDecimal))
            break;
    aux = '';
    for (; i < len; i++)
        if (strCheck.indexOf(objTextBox.value.charAt(i)) != -1)
            aux += objTextBox.value.charAt(i);

    if (whichCode != 8) {
        aux += key;
    }
    else {
        if (aux.length > 0)
            aux = aux.substr(0, aux.length - 1);
        if (aux.length == 0)
            aux = "0";
    }
    len = aux.length;
    if (len == 0)
        objTextBox.value = '';
    if (len == 1)
        objTextBox.value = '0' + SeparadorDecimal + '0' + aux;
    if (len == 2)
        objTextBox.value = '0' + SeparadorDecimal + aux;
    if (len > 2) {
        aux2 = '';
        for (j = 0, i = len - 3; i >= 0; i--) {
            if (j == 3) {
                aux2 += SeparadorMilesimo;
                j = 0;
            }
            aux2 += aux.charAt(i);
            j++;
        }
        objTextBox.value = '';
        len2 = aux2.length;
        for (i = len2 - 1; i >= 0; i--)
            objTextBox.value += aux2.charAt(i);
        objTextBox.value += SeparadorDecimal + aux.substr(len - 2, len);
    }
    return false;
}

function IsNumeric(valor) {
    if (valor == null)
        return false;
    var log = valor.length; var sw = "S";
    for (x = 0; x < log; x++) {
        v1 = valor.substr(x, 1);
        v2 = parseInt(v1);
        //Comprovo se é um valor numérico 
        if (isNaN(v2)) { sw = "N"; }
    }
    if (sw == "S") { return true; } else { return false; }
}

var primeiroslap = false;
var segundoslap = false;

function formateadata(data) {
    var long = data.length;
    var dia;
    var mes;
    var ano;

    if ((long >= 2) && (primeiroslap == false)) {
        dia = data.substr(0, 2);
        if ((IsNumeric(dia) == true) && (dia <= 31) && (dia != "00")) { data = data.substr(0, 2) + "/" + data.substr(3, 7); primeiroslap = true; }
        else { data = ""; primeiroslap = false; }
    }
    else {
        dia = data.substr(0, 1);
        if (IsNumeric(dia) == false)
        { data = ""; }
        if ((long <= 2) && (primeiroslap = true)) { data = data.substr(0, 1); primeiroslap = false; }
    }
    if ((long >= 5) && (segundoslap == false)) {
        mes = data.substr(3, 2);
        if ((IsNumeric(mes) == true) && (mes <= 12) && (mes != "00")) { data = data.substr(0, 5) + "/" + data.substr(6, 4); segundoslap = true; }
        else { data = data.substr(0, 3); ; segundoslap = false; }
    }
    else { if ((long <= 5) && (segundoslap = true)) { data = data.substr(0, 4); segundoslap = false; } }
    if (long >= 7) {
        ano = data.substr(6, 4);
        if (IsNumeric(ano) == false) { data = data.substr(0, 6); }
        else { if (long == 10) { if ((ano == 0) || (ano < 1900) || (ano > 2100)) { data = data.substr(0, 6); } } }
    }

    if (long >= 10) {
        data = data.substr(0, 10);
        dia = data.substr(0, 2);
        mes = data.substr(3, 2);
        ano = data.substr(6, 4);
        // Ano nao bisexto e é fevereiro e o dia é maior a 28 
        if ((ano % 4 != 0) && (mes == 02) && (dia > 28)) { data = data.substr(0, 2) + "/"; }
    }
    return (data);
}

function FormataCnpj(campo, teclapres) {
    var tecla = teclapres.keyCode;
    var vr = new String(campo.value);
    vr = vr.replace(".", "");
    vr = vr.replace("/", "");
    vr = vr.replace("-", "");
    tam = vr.length + 1;
    if (tecla != 14) {
        if (tam == 3)
            campo.value = vr.substr(0, 2) + '.';
        if (tam == 6)
            campo.value = vr.substr(0, 2) + '.' + vr.substr(2, 5) + '.';
        if (tam == 10)
            campo.value = vr.substr(0, 2) + '.' + vr.substr(2, 3) + '.' + vr.substr(6, 3) + '/';
        if (tam == 15)
            campo.value = vr.substr(0, 2) + '.' + vr.substr(2, 3) + '.' + vr.substr(6, 3) + '/' + vr.substr(9, 4) + '-' + vr.substr(13, 2);
    }
}


function formataCampos(e, src) {

    var mask = "";

    if (e.target != undefined) {
        var idElem = e.target.id.toString();
        obj = document.getElementById(idElem);
        mask = obj.getAttribute('mask');
    }
    else {
        mask = src.getAttribute('mask');
    }

    if (window.event) {
        _TXT = e.keyCode;
    }
    else if (e.which) {
        _TXT = e.which;
    }
    // se backspace entao aceita como true
    if (_TXT == 8)
        return true;
    if (e.keyCode == 9)
        return true;

    // verifica se passou dos limites(tamanho)
    var i = src.value.length;

    if ((i + 1) > mask.length) {
        return false;
    }

    if ((i + 1) > mask.toString().length) {
        return false;
    }
    var texto = mask.substring(i);
    // verifica qual o proximo caracter de mascara...
    var proxMascara = "";
    for (var n = 0; n < texto.length; n++) {
        if (texto.substr(n, 1) == "9" ||
             texto.substr(n, 1) == "X" ||
             texto.substr(n, 1) == "A" ||
             texto.substr(n, 1) == "x" ||
             texto.substr(n, 1) == "a") {
            proxMascara = texto.substr(n, 1);
            break;
        }
    }

    // se digitado numero e mascara == A entao nao aceita        
    if ((_TXT > 47 && _TXT < 58) &&
         (proxMascara == "A" || proxMascara == "a"))
        return false;
    // se nao digitou numero  e mascara == 9 entao nao aceita        
    if ((_TXT < 48 || _TXT > 57) &&
          proxMascara == "9")
        return false;
    // se mascara = A entao deve digitar apenas letras validas
    if ((_TXT < 65 || _TXT > 97) &&
         (_TXT < 90 || _TXT > 122) &&
         (proxMascara == "A" || proxMascara == "a"))
        return false;
    // se foi X entao aceita tudo;;;;      

    if (texto.substring(0, 1) != "9" &&
          texto.substring(0, 1) != "X" &&
          texto.substring(0, 1) != "A" &&
          texto.substring(0, 1) != "x" &&
          texto.substring(0, 1) != "a") {
        var onde = -1;
        for (var n = 0; n < texto.length; n++) {
            if (texto.substr(n, 1) == "9" ||
                 texto.substr(n, 1) == "X" ||
                 texto.substr(n, 1) == "A" ||
                 texto.substr(n, 1) == "x" ||
                 texto.substr(n, 1) == "a") {
                onde = n;
                break;
            }

        }
        if (onde < 0)
            src.value += texto;
        else
            src.value += texto.substr(0, onde);
    }

    // document.write(src.getAttribute('digitado'));
    if (proxMascara == "X" || proxMascara == "A") {
        src.value += String.fromCharCode(_TXT).toUpperCase();

        return false;
    }
    else
        return true;
}



function ShowLoading() {
    $('#trLoading').show();
    $('#trButton').hide();
    showLoader();

}

function HideLoading() {
    $('#trLoading').hide();
    $('#trButton').show();
}

function showLoader() {
    //*** Reload the image for IE ***
    document.getElementById('imgProgressBar').src = document.getElementById('imgProgressBar').src;
    //*** Let's make the image visible *** 
    document.getElementById('imgProgressBar').style.visibility = 'visible';
}
