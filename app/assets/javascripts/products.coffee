# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#owl').owlCarousel
    autoPlay: 10000
    items: 1
    responsive: true
    margin: 10
    itemsScaleUp: true
    responsive:
      0:
        items: 1
        nav: false
      600:
        items: 1
        nav: false
      1000:
        items: 1
        nav: true
        loop: false
  return


