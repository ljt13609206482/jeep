/**
 * Created by web-01 on 2018/1/30.
 */
$(function(){
    //视频播放按钮点击事件
    var video=document.getElementById("video");
    $(".playBtn").click(function(){
        $(".videoMask").show();
        $("#videoPlay").show();
        video.play();
    })
    $(".videoClose").click(function(){
        $(".videoMask").hide();
        $("#videoPlay").hide();
        video.pause();
    })
    //车型导航nav1单击事件
    $(".navBox .nav1").on("click","li a",function(e){
        e.preventDefault();
        $tar=$(e.target);
        var i=$tar.parent().index();
        //当导航切换时，将选中狂的left清零
        $("#navCav"+(i)+"Bg").animate({
            left:0
        });
        //设置与导航条对应的参数列表显示
        $("#txtLine"+(i+1)).show().siblings(".txtLine").hide();
        //设置与导航条对应的颜色框显示
        $("#colorBox"+(i+1)).show().siblings(".colorBox").hide();
        //设置与导航条颜色相对应车型颜色显示
        $("#carImg"+(i+1)).show().siblings(".carImg").hide();
        $tar.addClass("on").removeClass("off").parent().siblings().children("a").removeClass("on").addClass("off")
        $("#navCar"+(i+1)).show().siblings(".navCar").hide()
    });
    //车型选择
    $(".navCar").on("click","li",function(){
        var i=0;
        //获取当前点击元素的下标
        if($(this).parent().is("#navCar1")){
            i=$(this).index();
            $("#navCav1Bg").show().animate({
                    left:i*155
                });
            $("#navCav2Bg").hide();
            $("#txtLine1").children("ul").eq(i).show().siblings("ul").hide()
        }else{
            $("#navCav2Bg").show().animate({
                left:i*155
            });
            $("#navCav1Bg").hide();
            $("#txtLine2").children("ul").eq(i).show().siblings("ul").hide()
        }
    });
    //颜色切换功能
    $(".colorBox").on("click","li",function(){
        //获取当前的点击元素的下标
        var index=$(this).index();
        console.log(index)
$(this).children(".bg").attr("src","img/jeep_campass/co20.png").parent().siblings().children(".bg")
    .attr("src","img/jeep_campass/co21.png")
$(this).children(".txt").show().parent().siblings().children(".txt").hide();
$(".carImg img:nth-child("+(index+1)+")").css("opacity","1").siblings().css("opacity","0")
})

//鼠标拖动事件
    $(".block3").mousedown(".turn",function(e){
        e.preventDefault();
            $(".block3").mousemove(function(e) {
                e.preventDefault();
                var mouseX = e.originalEvent.x || e.originalEvent.layerX || 0;
                var mouseY = e.originalEvent.y || e.originalEvent.layerY || 0;
                $(".turn").css("left", mouseX-42);
                $("#img_up2").css({
                    width: mouseX
                })
            })
        });
    //当鼠标左键抬起时，解绑事件
    $(".block3").mouseup(".turn",function(e){
        $(this).unbind('mousemove')
    })


})