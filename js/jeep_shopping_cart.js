/**
 * Created by user on 2018/1/28.
 */
$(function(){
    function loadCartItem(){
        $.ajax({
            type:"GET",
            url:"data/cart/list.php"
        }).then(function(data){
            //console.log(data)
            //动态加载购物车数据
            if(data.code==200){
                var cartItems=data.data;
                var html=""
                var totalPrice=0;
                var hasNoChecked=false;
                for(var i=0;i<cartItems.length;i++){
                    if(cartItems[i].is_checked==1){
                        totalPrice+=cartItems[i].price*cartItems[i].count;
                    }else{
                        hasNoChecked=true;
                    }
                    html+=`<tr class="row">
                            <td class="centertd" data-iid="${cartItems[i].iid}">
                                <label class="valid select ${cartItems[i].is_checked==1?'select_on':''}" data-checked="${cartItems[i].is_checked}" data-iid="${cartItems[i].iid}"></label>
                                <a href="/goods/200" target="_blank">
                                    <div class="shopImg">
                                    <img src="${cartItems[i].pic}">
                                    </div>
                                </a>
                            </td>
                            <td class="centertd" data-iid="${cartItems[i].iid}">
                                <a href="/goods/200" target="_blank">
                                    <h3 class="shopCarName">${cartItems[i].title}</h3>
                                </a>
                                <span class="shopCarEdit" style="display: none;">很抱歉，该商品暂无库存</span>
                                <a href="/goods/200" class="shopCarEdit">点击修改</a>
                            </td>
                            <td class="centertd">
                                <h3 class="shopCarName">
                                    <span>颜色：默认<br></span>
                                </h3>
                            </td>
                            <td class="centertd">
                                <p class="scPrice">官方指导价：<br/>
                                    <span>¥${cartItems[i].price}</span>
                                </p>
                            </td>
                            <td class="centertd" data-iid="${cartItems[i].iid}">
                                <span class="sdNum">
                                    <a href="" class="sdMinus">-</a>
                                    <input type="text" class="cartCount" value="${cartItems[i].count}">
                                    <a href="" class="sdAdd">+</a>
                                </span>
                            </td>
                            <td class="centertd" data-iid="${cartItems[i].iid}">
                                <p class="scPrice">¥
                                    <span id="" class="subtotal">${cartItems[i].count*cartItems[i].price}</span>
                                </p>
                                <a href="javascript:void(0);" class="shopCarDel">
                                    <img src="http://cdn.boldseas.com/image/shop/pro/pc/delete.png?v=20180128" alt="">
                                    删除
                                </a>
                            </td>
                        </tr>`;
                }
                $("#cart_tbody").html(html);
                $("#effectivePrice").html(totalPrice);
                if(hasNoChecked!=true){
                    $("#selectAll").addClass("selectAll_on");
                }else{
                    $("#selectAll").removeClass("selectAll_on");
                }
            }else{
                //提示购物车没有数据
            }
        })
    };
    //购物车页面首次加载
    loadCartItem();
    //选择框单击事件（事件委托）
    $("#cart_tbody").on("click","label.valid",function(e){
        $tar=$(e.target);
        $tar.toggleClass("select_on");
        var isChecked=$tar.data("checked")==1?'0':'1';
        var iid=$tar.data('iid')
        $.ajax({
            type:"GET",
            url:"data/cart/update_checked.php",
            data:{iid:iid,checked:isChecked}
        }).then(function(data){
            if(data.code==200){
                loadCartItem();
            }
        })
    });
    //删除按钮点击事件
    $("#cart_tbody").on("click",".shopCarDel",function(e){
        e.preventDefault();
        $tar=$(e.target);
        var iid=$tar.parent().data("iid");
        $.ajax({
            type:"GET",
            url:"data/cart/del.php",
            data:{iid:iid}
        }).then(function(data){
            console.log(data);
            if(data.code==200){
                loadCartItem();

            }
        })
    })
    //数量加减按钮点击事件函数
    function　changeCount(iid,des,count){
        if(count==1&&des==-1){
           return;
        }else{
            count+=parseInt(des);
            $.ajax({
                type:"GET",
                url:"data/cart/update_count.php",
                data:{iid:iid,buyCount:count}
            }).then(function(data){
                if(data.code==200){
                    loadCartItem();
                }
            })
        }
    }
    //增加按钮点击事件
    $("#cart_tbody").on("click",".sdNum .sdAdd",function(e){
        e.preventDefault();
        $tar=$(e.target);
        var iid=$tar.parent().parent().data("iid");
        var count=parseInt($tar.siblings(".cartCount").val());
        changeCount(iid,1,count);
    });
    //减少按钮点击事件
    $("#cart_tbody").on("click",".sdNum .sdMinus",function(e){
        e.preventDefault();
        $tar=$(e.target);
        var iid=$tar.parent().parent().data("iid");
        var count=parseInt($tar.siblings(".cartCount").val());
        changeCount(iid,-1,count);
    })
    //全选按钮点击事件
    $("#selectAll").click(function(){
        $("#selectAll").toggleClass("selectAll_on");
        var checked=$("#selectAll").is(".selectAll_on")?'1':'0'
        $.ajax({
            type:"GET",
            url:"data/cart/update_checked.php",
            data:{iid:-1,checked:checked}
        }).then(function(data){
            console.log(data);
            if(data.code==200){
                loadCartItem();
            }
        })
    })


})