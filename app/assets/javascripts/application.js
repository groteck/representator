// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery-ui
//= require cocoon
$(document).ready(function() { // when document has loaded

  var i = 1;
  $('a#add').click(function() { // when you click the add link
    $('<div class="' + i + '" ><input type="text"  name="services['+i+']" class="service ' + i + '" /><a href="#" id="remove">Remove</a></div>').appendTo('.formulario'); // append (add) a new input to the document.
    // if you have the input inside a form, change body to form in the appendTo
    i++; //after the click i will be i = 3 if you click again i will be i = 4
    $('a#remove').click(function() { // similar to the previous, when you click remove link
      this.parentNode.parentNode.removeChild(this.parentNode);//ESTo deberia tirar //remove the last input 
    });
    $( ".service" ).autocomplete({
      source: "/autocomplete/services"
    });
  });


  $('a.reset').click(function() { 
    while(i > 2) { // while you have more than 1 input on the page
      $('input:last').remove(); // remove inputs
      i--;
    }
  });

});


