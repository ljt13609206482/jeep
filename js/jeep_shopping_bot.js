/**
 * Created by web-01 on 2018/1/19.
 */
$(function(){
    //首页轮播
    var $ul=$("#sceneBanner");
    var length=$("#sceneBanner li").length;
    //创建变量，保存等待时间，过度时间，单个li的宽度
    const WAIT=3000,DURA=500,LIWIDTH=1366;
    //创建变量，保存移动步数，定时器
    var moved= 0,timer=null;
    function move(){
           moved++;
        $ul.animate({
            left:-LIWIDTH*moved
        },DURA,function(){
            if(moved>=length-1){
                $ul.css("left",0);
                moved=0;
            };
        })
    };
    timer=setInterval(move,WAIT);
    //设置当鼠标移入时动画停止
    //当鼠标移出时，重新开始定时器
    $("#sceneBanner").mouseover(
        function(){
            clearInterval(timer);
            timer=null;
            $(".tagDock .tagInfo").show()
        }
    ).mouseout(
        function(){
            if(timer==null){
                timer=setInterval(move,WAIT);
            }
            $(".tagDock .tagInfo").hide()
        }
    );
    //鼠标移入下方列表效果：上方大图切换为当前图片
    $("#sceneThumbnail").on("mouseenter","li",function(e){
        //获取鼠标移入li在其父元素中的位置
        clearInterval(timer);
        timer=null;
        var i=$(e.target).parent().index();
        moved=i;
        $ul.animate({
            left:-LIWIDTH*moved
        });
        $(".sIndexCon ul:eq("+i+")").addClass("show").removeClass("hide")
            .siblings("ul").removeClass("show").addClass("hide");
    });
    $("#sceneThumbnail").on("mouseleave","li",function(){
        if(timer==null){
            timer=setInterval(move,WAIT);
        }
    });
    //副导航条鼠标移入事件
    $(".sub").mouseenter(
        function(){
            $(this).children(".submenu").show()
        }
    ).mouseleave(
        function(){
            $(this).children(".submenu").hide()
        }
    );
    //场景内单个商品加入购物车
    $(".sIndexConTxt").on("click","span",function(e){
        var $tar=$(e.target)
        $tar.toggleClass("selected");

        if($("ul.show .sIndexConTxt span:not('.selected')").length==0){
            console.log($(".sIndexConTxt span:not('.selected')").length);
            $("#btnSelectAll").addClass("selected")
        }else{
            $("#btnSelectAll").removeClass("selected")
        }
    });
    //全选商品按钮
    $("#btnSelectAll").click(function(e){
        $(e.target).toggleClass("selected");
        $("#section ul.show .sIndexConTxt span").toggleClass("selected")
    })
    //加入购物车功能
    $("#btnAddShopCart").click(function(e){
        e.preventDefault();
        $.ajax({
            type:"GET",
            url:"data/user/isLogin.php"
        }).then(function(data){
            if(data.ok==0){
                $("#noticeWin").show();
                $("#noticeMsg").html("您尚未登录，请登录！");
                setTimeout(function(){
                    $("#noticeWin").fadeOut();
                    $(".loginWrap").show();
                    $("#loginWin").fadeIn();
                },1000)
            }else{
                //获取被选中的商品的编号
                var productId=[];
                var $selectProducts=$("#section ul.show .sIndexConTxt span.selected").parent()
                for(var i=0;i<$selectProducts.length;i++){
                   var pId=$($selectProducts[i]).attr("productid")
                    productId.push(pId)
                }
                $.ajax({
                    type:"GET",
                    url:"data/cart/addAll.php",
                    data:{bid:productId}
                }).then(function(data){
                    if(data.code==200){
                        $("#noticeWin").show();
                        $("#noticeMsg").html("添加到购物车成功！");
                        setTimeout(function(){
                            $("#noticeWin").fadeOut();
                        },1000)
                    }else{
                        $("#noticeWin").show();
                        $("#noticeMsg").html("添加到购物车失败！");
                        setTimeout(function(){
                            $("#noticeWin").fadeOut();
                        },1000)
                    }
                })
            }
        })
    })





});