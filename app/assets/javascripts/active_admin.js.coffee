#= require active_admin/base
#= require tinymce
$(document).ready ->
  tinyMCE.init
    mode: "textareas"
    align: 'right'
    theme: "modern"
    editor_selector: "tinymce"
    width: "80%"
  return
