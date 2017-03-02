var ready;
ready = function() {
  // $("#recipes-container").find('img').each(function(){
  alert('lala');
  // }

  var lala = $('#recipes-container').find('img')
  
  console.log(lala)
};



// $(document).ready(ready);
$(document).on('turbolinks:load', ready);
