/**
 * Created by web-01 on 2018/1/26.
 */
$(function(){
    //获取商品列表页传递的参数
    var bid=location.search.split("=")[1];
   $.ajax({
        type:"Get",
        url:"data/product/getProductById.php",
       data:{bid:bid}
   }).then(function(data){
       console.log(data);
       var details=data.details;
       var smPic=data.pic.sm;
       var mdPic=data.pic.md;
       //加载小图
       var smHtml="";
       for(var i=0;i<smPic.length;i++){
           smHtml+=`<li pid="108" class="img-1-5">
           <a href="" rel="gallery">
            <img src="${smPic[i].sm}" class="medium">
           </a>
           </li>`;
       }
       $(".showProductImageThumbnail").html(smHtml);
       //记载大图
        var mdHtml="";
       for(var i=0;i<mdPic.length;i++){
           mdHtml+=`<li>
                          <img src="${mdPic[i].md}" alt=""/>
                    </li>`;
           $("#mdPicView").html(mdHtml);
       }
       //鼠标移入小图列表事件
       $(".showProductImageThumbnail").on("mouseover","li",function(e){
           const LIWIDTH=355;
           var i=$(this).index();
           $("#mdPicView").animate({
               left:-LIWIDTH*i
           });
           $(".showProductImageThumbnail li:eq("+i+")").addClass("on").siblings().removeClass("on")
       });
        //商品详情，购买说明单击事件
       $(".tab").on("click","li",function(e){
           $tar=$(e.target);
           var i=$($tar).index();
           console.log(i);
           $(".tab li:eq("+i+")").addClass("active").siblings().removeClass("active");
           if(i==1){
               $(".tabCon img").attr("src","img/jep_shopping/jeep_bot/bot_pic/details/7a1627c9-d73d-44dd-a84f-f41b02e45124.jpg")
           }else{
               $(".tabCon img").attr("src",details.details);
           }
       })


        //面包屑导航
       $("#productName").html(details.title).attr("href",details.bid);
       //加载右边文本
       $(".goodsInfo h3").html(details.title);
       $(".spanGoodsPrice").html(details.price);
       //适合车型
       if(details.family_id!=0){
           $("#suitcars").html(details.fname);
       }else{
           $("#suitcars").html("jeep全车系")
       }
        //是否可定
       if(details.can_order==1){
           $("#inOfStock .state").html("可定");
       }else{
           $("#inOfStock .state").html("不可定")
       }
       //颜色
        if(details.color==0){
            $(".colorItem a:nth-child("+1+")").show().siblings().hide();
        }
       //详情
       var html=`<img src="${details.details}">`
       $(".tabCon").html(html);

       //加入购物车数量点击事件
       //参数val:当前显示数量
       //des:取值为+1，-1，通过值得正负决定加减
        function changeCount(des){
            var count=parseInt($("#txtNumber").val());
            if(count==1&&des==-1){
                return;
            }else{
                count+=parseInt(des);
            }
            $("#txtNumber").val(count);
        };
       //为减号按钮绑定单击事件
       $(".sdMinus").click(function(){
           changeCount(-1);
       })
       //为加号绑定单击事件
       $(".sdAdd").click(function(){
           changeCount(1);
       })

       //立即购买，加入购物车事件
       $(".sdBtn").on("click","a",function(e){
           e.preventDefault();
           $.ajax({
               type:"GET",
               url:"data/user/isLogin.php"
           }).then(function(data){
               if(data.ok==0){
                   $(".loginWrap").show();
                   $("#noticeMsg>p").html("您尚未登录，请登录！")
                   $("#noticeWin").show();
                   setTimeout(function(){
                       $("#noticeWin").hide();
                       $("#loginWin").fadeIn();
                   },2000)
               }else{
                    //如果用户点击的按钮是加入购物车按钮
                   if($(e.target).is(".shopBtn")){
                        //获取当前商品bid，用户uid，，商品数量buyCount
                       var bid=$("#productName").attr("href");
                       var buyCount=$("#txtNumber").val();
                       $.ajax({
                           type:"Get",
                           url:"data/cart/add.php",
                           data:{bid:bid,buyCount:buyCount}
                       }).then(function(data){
                           console.log(data)
                           //$("#noticeMsg>p").html("添加购物车成功！");
                           //$("#noticeWin").show();
                           //$("#txtNumber").val("1");
                           //setTimeout(function(){
                           //    $("#noticeWin").fadeOut();
                           //},1000)
                       })
                   }else{
                       //获取
                       //跳转到结算页面

                   }
               }

           })
       });


   })

})