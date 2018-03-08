/**
 * Created by web-01 on 2017/12/25.
 */
//引入页面头部
ajax({
    type:"get",
    url:"jeep_header.html"
}).then(function(html){
    var header=document.getElementById("header");
    header.innerHTML=html;
    //页头导航鼠标移入事件
    $hdNav_li=$("#hdNav li");
    $hdNav_li.mouseover(function(){
        if($(this).is(".hdNavTab")){
            $(this).children("a").addClass("on");
            $(this).children("div").show();
        }
    });
    $("#hdNavCar").mouseover(function(){
        $("#hdNavCar a").addClass("on");
        $("#hdSubNavCar").show();
        $("#hdCarMasker").show();
    });
    $hdNav_li.mouseout(function(){
        if($(this).is(".hdNavTab")){
            $(this).children("a").removeClass("on");
            $(this).children("div").hide();
        }
    });
    $("#hdNavCar").mouseout(function(){
        $("#hdNavCar a").removeClass("on");
        $("#hdSubNavCar").hide();
        $("#hdCarMasker").hide();
    });

})

