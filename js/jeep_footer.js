/**
 * Created by web-01 on 2017/12/25.
 */
//引入页面底部
$(function(){
    $.ajax({
        type:"get",
        url:"jeep_footer.html"
    }).then(function(html){
        var footer=document.getElementById("footer");
        footer.innerHTML=html;
    })
})