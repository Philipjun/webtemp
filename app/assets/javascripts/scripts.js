$(document).ready(function(){
   $('.curtains').curtain();
   
  var scrollorama = $.scrollorama({
    blocks:'.curtains'
  });
    
    scrollorama.animate('#intro h1',{
      duration:200, property:'left', end:-860
    });
    
});
