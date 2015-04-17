// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require underscore


var nightStyle = [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"color":"#000000"},{"lightness":13}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#144b53"},{"lightness":14},{"weight":1.4}]},{"featureType":"landscape","elementType":"all","stylers":[{"color":"#08304b"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#0c4152"},{"lightness":5}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#0b434f"},{"lightness":25}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#000000"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"color":"#0b3d51"},{"lightness":16}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"}]},{"featureType":"transit","elementType":"all","stylers":[{"color":"#146474"}]},{"featureType":"water","elementType":"all","stylers":[{"color":"#021019"}]}]

var dayStyle = [{"featureType":"landscape.man_made","elementType":"geometry","stylers":[{"color":"#f7f1df"}]},{"featureType":"landscape.natural","elementType":"geometry","stylers":[{"color":"#d0e3b4"}]},{"featureType":"landscape.natural.terrain","elementType":"geometry","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi.medical","elementType":"geometry","stylers":[{"color":"#fbd3da"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#bde6ab"}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffe15f"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#efd151"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"black"}]},{"featureType":"transit.station.airport","elementType":"geometry.fill","stylers":[{"color":"#cfb2db"}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#a2daf2"}]}]

var zombieStyle = [{"featureType":"water","elementType":"geometry","stylers":[{"color":"#ffdfa6"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#b52127"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#c5531b"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#74001b"},{"lightness":-10}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#da3c3c"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#74001b"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"color":"#da3c3c"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"color":"#990c19"}]},{"elementType":"labels.text.fill","stylers":[{"color":"#ffffff"}]},{"elementType":"labels.text.stroke","stylers":[{"color":"#74001b"},{"lightness":-8}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#6a0d10"},{"visibility":"on"}]},{"featureType":"administrative","elementType":"geometry","stylers":[{"color":"#ffdfa6"},{"weight":0.4}]},{"featureType":"road.local","elementType":"geometry.stroke","stylers":[{"visibility":"off"}]}]

var icons = {
      cutlery_lunch: { icon: '/images/cutlery.png'},
      cake_lunch: { icon: '/images/cake.png'},
      cheese_lunch: { icon: '/images/cheese.png'},
      chicken_lunch: { icon: '/images/chicken.png'},
      chinese_lunch: { icon: '/images/chinese.png'},
      drink_lunch: { icon: '/images/drink.png'},
      fish_lunch: { icon: '/images/fish.png'},
      burger_lunch: { icon: '/images/hamburger.png'},
      indian_lunch: { icon: '/images/indian.png'},
      mexican_lunch: { icon: '/images/mexican.png'},
      noodles_lunch: { icon: '/images/noodles.png'},
      pizza_lunch: { icon: '/images/pizza.png'},
      pot_lunch: { icon: '/images/pot.png'},
      steak_lunch: { icon: '/images/steak.png'},
      cutlery_dinner: { icon: '/images/cutlery_w.png'},
      cake_dinner: { icon: '/images/cake_w.png'},
      cheese_dinner: { icon: '/images/cheese_w.png'},
      chicken_dinner: { icon: '/images/chicken_w.png'},
      chinese_dinner: { icon: '/images/chinese_w.png'},
      drink_dinner: { icon: '/images/drink_w.png'},
      fish_dinner: { icon: '/images/fish_w.png'},
      burger_dinner: { icon: '/images/hamburger_w.png'},
      indian_dinner: { icon: '/images/indian_w.png'},
      mexican_dinner: { icon: '/images/mexican_w.png'},
      noodles_dinner: { icon: '/images/noodles_w.png'},
      pizza_dinner: { icon: '/images/pizza.png'},
      pot_dinner: { icon: '/images/pot_w.png'},
      steak_dinner: { icon: '/images/steak_w.png'},
      zombie: { icon: '/images/zombie.png'},
      airport: { icon: '/images/airplane.png'},
      boat: { icon: '/images/boat.png'},
      church: { icon: '/images/church.png'},
      gun: { icon: '/images/gun.png'},
      hospital: { icon: '/images/hospital.png'},
      tools: { icon: '/images/tools.png'},
      tower: { icon: '/images/tower.png'},
      volcano: { icon: '/images/volcano.png'},
      fire: { icon: '/images/fire.png'}
    };


var lastId = '0';

show_me = function(id){
  $('div#'+id).slideToggle();
  if (lastId != id) $('div#'+lastId).slideUp();
  lastId = id;
};

$(document).ready(function() {
  setTimeout(function(){
      $("#overlay").fadeOut(5000);
  },1000)
});

showNight = function(){
  map.setOptions({styles: nightStyle});
  $("#logo_image").attr("src","/images/logo_w.png");
  showMarkers('Dinner');
  hideMarkers('Lunch');
  hideMarkers('Zombie');
  heatmapOff();
  buildPointArray(markers.map(filterDinner));
  heatmap.set('radius', 50);
  heatmap.set('gradient', null);
};

showDay = function(){
  map.setOptions({styles: dayStyle});
  $("#logo_image").attr("src","/images/logo.png");
  showMarkers('Lunch');
  hideMarkers('Dinner');
  hideMarkers('Zombie');
  heatmapOff();
  buildPointArray(markers.map(filterLunch));
  heatmap.set('radius', 50);
  heatmap.set('gradient', null);
};

showZombie = function(){
  map.setOptions({styles: zombieStyle});
  $("#logo_image").attr("src","/images/logo_w.png");
  showMarkers('Zombie');
  hideMarkers('Dinner');
  hideMarkers('Lunch');
  heatmapOff();
  buildPointArray(markers.map(filterZombie));
  heatmap.set('radius', 80);
  blueGradient();
};

showMarkers = function(type){
  for (var i=0; i<markers.length; i++) {
    if (markers[i].category == type){
      markers[i].setVisible(true);
    }
  }
};

hideMarkers = function(type){
  for (var i=0; i<markers.length; i++) {
    if (markers[i].category == type){
      markers[i].setVisible(false);
    }
  }
};
