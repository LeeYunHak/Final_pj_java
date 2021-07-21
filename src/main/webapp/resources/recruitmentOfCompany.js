/*구글맵 START*/
var map;
function initMap() {
  var seoul = { lat: 37.5642135 ,lng: 127.0016985 };
  map = new google.maps.Map( document.getElementById('map'), {
    zoom: 12,
    center: seoul
  });
  new google.maps.Marker({
    position: seoul,
    map: map,
  });
}
function changeCenter(){
  var busan = { lat: 35.1379222, lng: 129.05562775 };
  map.panTo(busan);
  map.setZoom(14);
}
/*구글맵 END*/

document.getElementById('nav3-6-ProfileName').addEventListener('click', function() {

    document.getElementsByClassName('arrow_box')[0].style.display ='block'
});
document.getElementsByClassName('arrow_box')[0].addEventListener('mouseover', function() {

    document.getElementsByClassName('arrow_box')[0].style.display ='block'
});
document.getElementsByClassName('arrow_box')[0].addEventListener('mouseout', function() {

    document.getElementsByClassName('arrow_box')[0].style.display ='none'
});