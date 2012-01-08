# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
         $('#invoice_client_legal_name').autocomplete
                 source: "/autocomplete/clients"
                 select: (event,ui) -> $("#invoice_client_id").val(ui.item.id)

                 
