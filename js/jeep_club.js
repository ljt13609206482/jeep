/**
 * Created by user on 2018/2/3.
 */
$(function(){
    //楼层滚动功能
    var $sNav=$("#sNav")
    $(window).scroll(function(){
        var scrollTop=$('html,body').scrollTop();
        var $part1=$(".part1")
        var offsetTop=$part1.offset().top;
        if(scrollTop>(offsetTop)){
            $(".sidenav").fadeIn(500)
        }else{
            $(".sidenav").fadeOut(500)
        }
        var $parts=$(".part");
        $parts.each(function(i,elem){
            var $p=$(elem);
            if($p.offset().top<scrollTop+innerHeight/3)
                $sNav.find("li:eq("+i+")").addClass("on").siblings().removeClass("on");
        });
    });
    //侧导航单击事件
    $("#sNav").on("click","li",function(){
        //获取当前里的下标
        var index = $(this).index()
        var $nextPart=$(".part:eq("+index+")")
        var nextOffsetTop=$nextPart.offset().top;
        $("html").animate({
            scrollTop:nextOffsetTop-93
        },500)
    })


})