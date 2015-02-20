ready = ->
  alert("<%= j current_user.name %>")

$(document).ready(ready)
$(document).on('page:load', ready)