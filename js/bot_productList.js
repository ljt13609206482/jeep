/**
 * Created by web-01 on 2018/1/23.
 */

$(function(){
    //副导航鼠标移入事件
    $(".sub").mouseenter(
        function(){
            $(this).children(".submenu").show()
        }
    ).mouseleave(
        function(){
            $(this).children(".submenu").hide()
        }
    );
    //创建加载数据函数
    function loadProduct(pno,pageSize,kw){
            $.ajax({
                type:"GET",
                url:"data/product/product_search.php",
                data:{pno:pno,pageSize:pageSize,kw:kw}
            }).then(function(data){
                console.log(data);
                var productList=data.data;
                var html="";
                for(var i=0;i<productList.length;i++){
                    html+=`<li>
                <a href="bot_details.html?bid=${productList[i].bid}" data-bid="${productList[i].bid}">
                <div class="sListImg">
                <div class="jeeplogo"></div>
                <img src="${productList[i].pic}" alt="">
                </div>
                <div class="slistTitle">
                <h3>${productList[i].title}</h3>
                <p class="sPrice">限时特惠：¥${productList[i].price}</p>
                </div>
                </a>
                </li>`;
                }
                $(".sList").html(html);
                //根据pageCount动态创建分页条
                var html="";
                for(var i=1;i<=data.pageCount;i++){
                    html+=`<a href="#" class="${data.pno==i?'cur':''}" data-pno="${data.pno}">${i}</a>`
                }
                //根据当前页数，控制上一页，下一页显示隐藏
                $("#pageNum").html(html);
                var $cur = $(".cur");
                if(data.pno==1){
                    $("#pre").hide();
                    $("#next").show();
                }else{
                    if(data.pno==data.pageCount){
                        $("#next").hide();
                        $("#pre").show();
                    }else{
                        $("#next").show();
                        $("#pre").show();
                    }
                };
            })
        };
    //页面首次加载时，手动调用加载数据函数
    loadProduct(1,12,"");
    //分页条：上一页，下一页点击事件
    $(".sPage>a").on("click",function(e){
        e.preventDefault();
        var i=$(".cur").html();
        $tar=$(e.target);
        //console.log($tar);
        if($tar.is("#pre")){
            i--;
            loadProduct(i,12,"");
        }else{
            i++;
            loadProduct(i,12,"");
        }
    });
    //分页条数字按钮点击事件
    $("#pageNum").on("click","a",function(e){
        e.preventDefault();
        var newPage=$(e.target).html();
        loadProduct(newPage,12,"");
    });
    //副导航查询点击事件
    $(".submenu").on("click","li a",function(e){
        e.preventDefault();
        var kw=$(this).attr("href").split("=")[1];
        loadProduct(1,12,kw);
    })



})