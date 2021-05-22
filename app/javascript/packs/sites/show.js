document.addEventListener("DOMContentLoaded", function (e) {
    var elem = document.getElementById('screen')
    elem.addEventListener("click", function(e) {
        if(document.getElementById('doodle_input')){
            document.getElementById('doodle_input').remove();
        }
        var input_doodle_html = "<div><input type='text' id='doodle_input' value='' style='position:absolute; top:" + e.offsetY +"px; left:" + e.offsetX + "px;'></div>";
        elem.insertAdjacentHTML('afterbegin', input_doodle_html);
        document.getElementById('doodle_input').focus();
    })
  })
