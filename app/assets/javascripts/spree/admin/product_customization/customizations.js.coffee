$ ->
  $("body").on "click", "a.spree_remove_nested_record", (e)->
    el = $(this)
    parent = el.parents("tr")
    if parent.find("[data-field=id]").val()
      parent.find("[data-field=destroy]").val("true")
      parent.fadeOut('hide')
    else
      parent.remove()





  # $('body').on'click', '', ()->
  #   alert(1)

  #   el = $(this);
  #   el.prev("input[type=hidden]").val("1");
  #   el.closest(".fields").hide();
  #   if (el.attr("href") == '#') {
  #     el.parents("tr").fadeOut('hide');
  #   }else if (el.attr("href")) {
  #     $.ajax({
  #       type: 'POST',
  #       url: el.attr("href"),
  #       data: {
  #         _method: 'delete',
  #         authenticity_token: AUTH_TOKEN
  #       },
  #       success: function(response) {
  #         el.parents("tr").fadeOut('hide');
  #       },
  #       error: function(response, textStatus, errorThrown) {
  #         show_flash_error(response.responseText);
  #       }

  #     })
  #   }
  #   return false;
  # });
