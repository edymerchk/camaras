$ ->
  $('#camaraModal').modal('hide')
  $(document).on "click", ".camara_link", (e) ->
    e.preventDefault()
    $.get @href, (data) ->
      $('#camaraModal').modal('show')
      $("#camaraModal #sector").text(data.sector)
      $("#camaraModal img").attr "src", data.link
      $("#camaraModal #direccion").text(data.direccion)