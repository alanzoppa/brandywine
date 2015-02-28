$(document).ready ->

  main = $(".main")
  main.onepage_scroll
     sectionContainer: "section"
     easing: "ease"
     animationTime: 1000
     pagination: false
     updateURL: true
     loop: true
     keyboard: true
     responsiveFallback: false
     direction: "vertical"
     afterMove: (index)->
       $('section div.background.filtered', main).removeClass('visible')
       $("section:nth-child(#{index}) div.background.filtered", main).addClass('visible')

  $('.main section:nth-child(1) div.background.filtered').addClass('visible')


  $("div.arrow.fa.fa-arrow-circle-up").on 'click', -> main.moveUp()
  $("div.arrow.fa.fa-arrow-circle-down").on 'click', -> main.moveDown()
