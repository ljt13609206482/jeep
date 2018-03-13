/**
 * Created by web-01 on 2017/12/27.
 */
$(function(){
    //右侧导航列表
    var $rightNav=$("#rightNav");
    $rightNav.on("mousemove","a",function(e){
        $tar=$(e.target);
        console.log($tar);
        if($tar.is("a")){
            $tar.css({
                width:190
            })
        }else{
            $tar.parent().css({
                width:190
            })
        }
    });
    $rightNav.on("mouseout","a",function(e){
        $tar=$(e.target);
        if($tar.is("a")){
            $tar.css({
                width:70
            })
        }else{
            $tar.parent().css({
                width:70
            })
        }
    });

    //图片轮播
    var $ul=$(".banner_img");
    var $ids=$(".indicators");
    var length=$(".banner_img li").length;
    //设置等待时间，和变换时间,和单个li的宽度
    const WAIT=3000,DURA=500,LIWIDTH=1366;
    //创建变量来保存步数,和定时器
    var moved= 0;
    var timer=null;
    //创建移动函数move
    //dir变量取值（1，-1）；根据dir值得正负来决定图片移动方向，默认为1
    //正值图片左移
    //负值图片右移
    function move(dir=1){
        if(moved<=length){
            moved+=dir;
        }
        $ul.animate({
            left:-LIWIDTH*moved
        },DURA,function(){
            //当图片播放到最后一张时，清空moved
            if(moved==length-1){
                $ul.css("left",0);
                moved=0;
            };
            //设置当前播放图片对应的小圆点的颜色为蓝色
            $ids.children(":eq("+moved+")").addClass("hover").siblings().removeClass("hover");
        });
    };
    if(timer!=null){
        timer=setInterval(move,WAIT);
    }
    //当鼠标进入图片时，停止定时器
    //当鼠标移出时，重新开始定时器
    $("#container").mouseover(function(){
        clearInterval(timer);
        timer=null;
    }).mouseout(function(){
        timer=setInterval(move,WAIT)
    });


    //为左右连个按钮绑定单击事件
    $("[data-move=right]").click(function(e){
        e.preventDefault();
        //如果动画列表未播放动画，则调用左移函数
        //防止动画叠加
        if(!$ul.is(":animated")){
            move();
        }
    });
    $("[data-move=left]").click(function(e){
        e.preventDefault();
        if(!$ul.is(":animated")){
            //当左移到第一张图片时
            //设置moved为最后一张
            if(moved==0){
                $ul.css("left",-LIWIDTH*(length-1));
                moved=length-1;
            }
            move(-1);
        }
    })
    //为小圆点绑定点击事件，点击小圆点，对应图片显示
    $ids.on("mouseover","li",function(){
        var $li=$(this);
        //获取当前点击的li的下标
        var i=$li.index();
        console.log(i);
        //移动到当前下表对应的图片
        //清除动画队列
        moved=i;
        $ul.stop(true).animate({
            left:-LIWIDTH*moved
        },DURA,function(){
            //设置当前小圆点颜色变化
            $ids.children(":eq("+i+")").addClass("hover").siblings().removeClass("hover");
        })
    });
    //微信二维码点击事件
        $("#ftWechatQrBt").click(function(e){
            e.preventDefault();
            $("#wechatQr").show();
        });
        $("#wechatQrClose").click(function(e){
            e.preventDefault();
            $("#wechatQr").hide();
        })
})


