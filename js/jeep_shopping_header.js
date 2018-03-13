/**
 * Created by web-01 on 2018/1/16.
 */
$(function() {
    $("body #header").load("jeep_shopping_header.html", function () {
        //加载页头时判断用户是否登录，如用户已登录，显示当前用户信息
            $.ajax({
                type: "get",
                url: "data/user/isLogin.php"
            }).then(function (data) {
                if (data.ok == 1) {
                    $("#loginUrl").hide();
                    $("#welcome").show();
                    $("#logout").show();
                    $("#customName").html(data.uname);
                    $.ajax({
                        type:"GET",
                        url:"data/cart/list.php"
                    }).then(function(data){
                        var cartList=data.data;
                        var totalCount=0;
                        for(var i=0;i<cartList.length;i++){
                            totalCount+=parseInt(cartList[i].count);
                        }
                        //console.log(totalCount);
                        $("#myCart .shopNum").html(totalCount);
                    })
                } else {
                    $("#loginUrl").show();
                    $("#welcome").hide();
                    $("#logout").hide();
                    $("#myCart .shopNum").html("0");
                }
            });

        //页头事件绑定
        //1.登录框，注册框单击事件
        $(".sNav").on("click", "li #loginUrl", function () {
            $("#loginWin").toggle("explode");
            $(".loginWrap").show();
        });
        $("#login_close").click(function () {
            $("#loginWin").toggle("explode");
            $(".loginWrap").hide();
        });
        $("#toRegister").click(function (e) {
            e.preventDefault();
            $("#loginWin").hide();
            $("#registerWin").toggle("explode");
        });
        $("#register_close").click(function () {
            $("#registerWin").toggle("explode");
            $(".loginWrap").hide();
        });
        $("#toLogin").click(function (e) {
            $("#registerWin").hide();
            $("#loginWin").toggle("explode");
        })
        //顶部微信二维码单击事件
        $("#wxA").click(function (e) {
            e.preventDefault();
            $("#ervImg").fadeToggle();
        });
        //购物车按钮点击事件
        $("#myCart").click(function(e){
            e.preventDefault();
            //检测是否登录状态
            $.ajax({
                type: "get",
                url: "data/user/isLogin.php"
            }).then(function (data) {
                if (data.ok == 1) {
                    location.href="jeep_shopping_cart.html"
                }else{
                    $("#noticeWin").show();
                    $("#noticeMsg").html("您尚未登录，请登录！");
                    setTimeout(function(){
                        $("#noticeWin").fadeOut();
                        $(".loginWrap").show();
                        $("#loginWin").fadeIn();
                    },1000)
                }
            })
        });
        //导航条单击事件
        $("ul.sNav").on("click","li.sNavTab a",function(e){
            e.preventDefault();
           var $tar=$(e.target);
            //console.log($tar.data("jump"));
            url=$tar.attr("href");
            //跳转时，降地址参数传递到新页面
            console.log(url);
            location.href=url+"?jump="+$tar.data("jump");
        });


        //获取当前页面的地址,及通过页面地址传递的参数
        var params= window.location.search;
        var num=params.split("jump=")[1];
        //console.log(num);
        //设置当前导航为值为激活状态
        if(!num){
            num=1;
        }
        $(".sNav li:nth-child(" + num + ")").addClass("on").siblings().removeClass("on");


        //验证码
        var validateCode = "";
        /*创建四个随机数*/
        function rand() {
            var str = "abcdefghijklmnopqrstuvwxyz0123456789";
            var arr = str.split("");
            var validate = "";
            var ranNum;
            for (var i = 0; i < 4; i++) {
                ranNum = Math.floor(Math.random() * 36);
                validate += arr[ranNum];
            }
            validateCode = validate;
            return validate;
        }

        /*随机生成干扰线x坐标*/
        function lineX() {
            var ranLineX = Math.floor(Math.random() * 90);
            return ranLineX;
        }

        /*随机生成干扰线Y坐标ֵ*/
        function lineY() {
            var ranLineY = Math.floor(Math.random() * 40);
            return ranLineY;
        }

        function clickChange() {
            var myCanvas = document.getElementById('myCanvas');
            var cxt = myCanvas.getContext('2d');
            cxt.fillStyle = '#000';
            cxt.fillRect(0, 0, 90, 40);

            for (var j = 0; j < 20; j++) {
                cxt.strokeStyle = '#fff';
                cxt.beginPath();
                cxt.moveTo(lineX(), lineY());
                cxt.lineTo(lineX(), lineY());
                cxt.lineWidth = 0.5;
                cxt.closePath();
                cxt.stroke();
            }

            cxt.fillStyle = 'red';
            cxt.font = 'bold 20px Arial';
            cxt.fillText(rand(), 25, 25);
        }

        //验证码单击事件
        clickChange();
        myCanvas.onclick = function (e) {
            e.preventDefault();
            clickChange();
        };

        //用户注册模块
        //1.验证用户名是否可用
        $("#rname").blur(function () {
            var uname = $("#rname").val();
            if (uname == "") {
                $("#rname_tip").html("请输入用户名！").addClass("err").removeClass("ok")
            } else {
                reg = /^[a-zA-Z0-9]{6,10}$/;
                if (!reg.test(uname)) {
                    $("#rname_tip").html("用户名格式错误！").addClass("err").removeClass("ok")
                } else {
                    $.ajax({
                        type: "post",
                        url: "data/user/user_is_exist.php",
                        data: {uname: uname}
                    }).then(function (data) {
                        console.log(data.ok)
                        if (data.ok == 1) {
                            $("#rname_tip").html("").addClass("ok")
                        }
                        ;
                        if (data.ok == -1) {
                            $("#rname_tip").html(data.msg).addClass("err").removeClass("ok")
                        }
                    })
                }
            }
        })
        //验证密码格式是否正确
        $("#rpwd").blur(function () {
            var rpwd = $("#rpwd").val()
            if (rpwd == "") {
                $("#rpwd_tip").html("密码不能为空").addClass("err").removeClass("ok")
            } else {
                reg = /^[a-zA-Z0-9]{5,17}$/;
                if (!reg.test(rpwd)) {
                    $("#rpwd_tip").html("密码格式错误").addClass("err").removeClass("ok")
                } else {
                    $("#rpwd_tip").html("").addClass("ok").removeClass("err")
                }
            }
        })
        //验证密码与重复密码是否一致
        $("#crpwd").blur(function () {
            var rpwd = $("#rpwd").val();
            var crpwd = $("#crpwd").val();
            if (crpwd == "") {
                $("#crpwd_tip").html("重复密码不能为空").addClass("err").removeClass("ok")
            } else {
                if (rpwd != crpwd) {
                    $("#crpwd_tip").html("两次输入密码不一致").addClass("err").removeClass("ok")
                } else {
                    $("#crpwd_tip").html("").addClass("ok").removeClass("err")
                }
            }
        })
        //所有验证通过后向注册页面发送请求
        $("#register").click(function (e) {
            e.preventDefault();
            var rname = $("#rname").val();
            var rpwd = $("#rpwd").val();
            var email = $("#email").val();
            var crpwd = $("#crpwd").val();
            var phone = $("#phone").val();
            if (rname == "") {
                $("#rname_tip").html("请输入用户名！").addClass("err").removeClass("ok")
            } else {
                if (rpwd == "") {
                    $("#rpwd_tip").html("密码不能为空").addClass("err").removeClass("ok")
                } else {
                    if (crpwd == "") {
                        $("#crpwd_tip").html("重复密码不能为空").addClass("err").removeClass("ok")
                    } else {
                        $.ajax({
                            type: "post",
                            url: "data/user/register.php",
                            data: {uname: rname, upwd: rpwd, email: email, phone: phone}
                        }).then(function (data) {
                            $("#registerWin").hide();
                            $("#noticeWin").show();
                            var time = 4;
                            var timer = null;
                            timer = setInterval(function () {
                                $("#noticeMsg").html("注册成功！" + time + "s后返回登录页>>");
                                time--;
                                if (time == 0) {
                                    $("#loginWin").fadeIn();
                                    $("#noticeWin").fadeOut();
                                    location.reload();
                                    clearInterval(timer)
                                }
                            }, 1000)
                        })
                    }
                }
            }
        })
        //登录模块
        $("#uname").blur(function () {
            var uname = $("#uname").val();
            if (uname == "") {
                $("#uname_tip").html("用户名不能为空！").addClass("err").removeClass("ok");
            } else {
                var reg = /^[a-zA-Z]+[a-zA-Z0-9]{5,10}$/;
                if (reg.test(uname)) {
                    $("#uname_tip").html("").addClass("ok").removeClass("err");
                } else {
                    $("#uname_tip").html("用户名格式不正确").addClass("err").removeClass("ok");
                }
            }
        });
        //用户密码验证
        $("#upwd").blur(function () {
            var upwd = $("#upwd").val();
            if (upwd == "") {
                $("#upwd_tip").html("用户密码不能为空！").addClass("err").removeClass("ok");
            } else {
                var reg = /^[a-zA-Z0-9]{6,16}$/;
                if (reg.test(upwd)) {
                    $("#upwd_tip").html("").addClass("ok").removeClass("err");
                } else {
                    $("#upwd_tip").html("用户密码格式不正确").addClass("err").removeClass("ok");
                }
            }
        });
        //验证码验证
        $("#login").click(function () {
            var uname = $("#uname").val();
            var upwd = $("#upwd").val();
            var yzm = $("#yzm_input").val().toUpperCase();
            var code = validateCode.toUpperCase();
            if (uname == "") {
                $("#uname_tip").html("用户名不能为空！").addClass("err").removeClass("ok");
            } else {
                if (upwd == "") {
                    $("#upwd_tip").html("用户密码不能为空！").addClass("err").removeClass("ok");
                } else {
                    if (yzm == "") {
                        $("#yzm_tip").html("请输入验证码").addClass("err").removeClass("ok");
                    } else {
                        if (yzm != code) {
                            $("#yzm_tip").html("验证码错误").addClass("err").removeClass("ok");
                        } else {
                            $("#yzm_tip").html("").addClass("ok").removeClass("err");
                            $.ajax({
                                type: "post",
                                url: "data/user/login.php",
                                data: {uname: uname, upwd: upwd}
                            }).then(function (data) {
                                if (data.ok == 1) {
                                    $("#loginWin").hide();
                                    $("#noticeWin").show();
                                    $("#noticeMsg").html("登录成功！");
                                    setTimeout(function () {
                                        $("#noticeWin").hide();
                                        $(".loginWrap").hide();
                                    }, 2000);
                                    $("#loginUrl").hide();
                                    $("#welcome").show();
                                    $("#logout").show();
                                    $("#customName").html(data.uname);
                                }
                            })
                        }
                    }
                }
            }
        })
        //退出登录事件
        $("#logout").click(function (e) {
            e.preventDefault();
            $.ajax({
                type: "get",
                url: "data/user/logout.php"
            }).then(function () {
                $("#loginUrl").show();
                $("#welcome").hide();
                $("#logout").hide();
                $("#myCart .shopNum").html("0");
            })
        });

    });

    //加载页脚
    $.ajax({
        type:"get",
        url:"jeep_shopping_footer.html"
    }).then(function(data) {
        $("#footer").html(data)
        //根据浏览器宽度设置浮动二维码的外边距
        if (window.innerWidth == 1366) {
            $(".floating_left").css("margin-left", -137).css("top", -246)
        } else {
            $(".floating_left").css("margin-left", -408)
        }
    })

})




