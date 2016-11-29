var enderecos;
var places = [];
infos = [];


function InitializeMap() {

    /*Montagem das localizações
    ---------------------------*/
    MontaArrayPlaces();

    var zoom = 1;
    if (places.length == 0) {
        zoom = 1;
    }

    var myOptions = {
        zoom: zoom,
        center: new google.maps.LatLng(0, 0),
        scrollwheel: false,
        streetViewControl: false,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    var map = new google.maps.Map(
    document.getElementById("map_canvas"), myOptions);
    

    /*Adiciona Pontos no Mapa
    --------------------------*/
    setMarkers(map, places);
}

function trocaClassificacao() {

    $('input[name*="RbAv"]').change(function () {

        InitializeMap();

    });
}


function MontaArrayPlaces() {

    var userID =  $('input[name*="hdnUserID"]')[0].value; 
    var classif = $('input:checked[name*="RbAv"]')[0].value;

    $.ajax({
        type: 'POST',
        async: false,
        url: 'EnderecosHandler.ashx',
        dataType: 'json',
        data: {
            'class': classif, //Classificacao do cliente           
            'userID': userID //ID do usuário Logado
        },
        success: function (data) {

            places = data.enderecos;

        }
    });

}





function setMarkers(map, locations) {
    //    var image = new google.maps.MarkerImage('pin.png',
    //      new google.maps.Size(50, 42),
    //      new google.maps.Point(0, 0),
    //      new google.maps.Point(0, 42));
    //    var shadow = new google.maps.MarkerImage('pin.png',
    //      new google.maps.Size(50, 42),
    //      new google.maps.Point(0, 0),
    //      new google.maps.Point(0, 42));   

    var shape = {
        coord: [1, 1, 1, 20, 18, 20, 18, 1],
        type: 'poly'
    };
    var bounds = new google.maps.LatLngBounds();

    for (var i = 0; i < locations.length; i++) {

        var endereco = locations[i];
        var contentHTML = endereco[3];        
        var myLatLng = new google.maps.LatLng(endereco[1], endereco[2]);
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
    
            // shadow: shadow,
            // icon: image,
            shape: shape,
            title: endereco[0],
            zIndex: endereco[4],
            content: contentHTML
        });


        google.maps.event.addListener(map, 'zoom_changed', function () {
            zoomLevel = map.getZoom();
            
            if (zoomLevel > 30) {
                map.setZoom(5);
            }
        });


        google.maps.event.addListener(marker, 'click', function () {

            closeInfos();
            var info = new google.maps.InfoWindow({
                content: this.content,
                pane: "floatPane",                              
                boxStyle: {                   
                  opacity: 0.75,
                  width: "300px"
                 }
            });
            info.open(map, this);
            infos[0] = info;
        });

        bounds.extend(myLatLng);
        map.fitBounds(bounds);
    }
}


function closeInfos() {

    if (infos.length > 0) {

        /* detach the info-window from the marker */
        infos[0].set("marker", null);

        /* and close it */
        infos[0].close();

        /* blank the array */
        infos.length = 0;
    }
}