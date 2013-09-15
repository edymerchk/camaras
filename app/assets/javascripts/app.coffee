# $ ->
#   $(document).on "click", ".camara_link", (e) ->
#     e.preventDefault()
#     $.get @href, (data) ->
#       $("#actual").slideToggle "slow", ->
#         $("#actual #imagen img").attr "src", data.link
#         $("#actual #sector").text data.sector
#         $("#actual #direccion").text data.direccion
#         $("#actual").slideDown "slow"