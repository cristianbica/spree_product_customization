#  require store/spree_frontend
$ ->
  if $("#product-customization").length==1

    #predefined values
    if $("#predefined_customizations").length==1
      $("input[type=hidden][name=customization]").val($("#predefined_customizations").val())
      $("#predefined_customizations").parents(".validatable").removeClass 'invalid'
      $("#predefined_customizations").parents("form").trigger 'changed'
      $("#predefined_customizations").on 'change', ->
        el = $(this)
        $("input[type=hidden][name=customization]").val(el.val())
        el.parents(".validatable").removeClass 'invalid'
        el.parents("form").trigger 'changed'

    #tshit customization
    if $("#product_customization-t_shirt").length==1
      $(".product_customization-t_shirt").on 'keyup', ->
        str = "#{$("#product_customization-t_shirt-number").val()} - #{$("#product_customization-t_shirt-name").val()}"
        $("input[type=hidden][name=customization]").val(str)
        $("input[type=hidden][name=customization]").parents("form").trigger 'changed'
        valid = $("#product_customization-t_shirt-number").val() and $("#product_customization-t_shirt-name").val()
        if valid
          $("input[type=hidden][name=customization]").parents(".validatable").removeClass 'invalid'
        else
          $("input[type=hidden][name=customization]").parents(".validatable").addClass 'invalid'

