<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>천재교육 팀플 1차</title>

  <!--스타일 초기화-->
  <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

  <!--폰트-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

  <!-- 필요한 플러그인 연결 -->
  <script src="https://code.jquery.com/jquery-latest.js"></script>
  <link rel="stylesheet" href="common.css">
  <link rel="stylesheet" href="hd.css">
  <link rel="stylesheet" href="ft.css">

  <style>
    .contents { clear: both; padding: 50px; ;}
    .contents::after { content:""; clear:both; display:block; width:100%; }
    .vs { clear:both; width:100%; min-height:600px; background-color: rgb(255, 255, 255); position:relative; overflow:hidden; }
    .img_box { position:relative; width: 100%; height:1000px; overflow:hidden; }
    .img_box li { visibility:hidden; opacity:0;  transition-duration:0.7s; transition-delay:0.1s;    width:100%; height:600px;  }
    .img_box li .bg_box { width:100%; height:1000px; background-repeat: no-repeat; background-position:center center; background-size:cover; position:absolute;left: 0; top: 0; z-index:5; }
    .img_box li.active .bg_box { z-index:6; }
    .img_box li.item1 .bg_box { background-image: url("./images/educatino01.jpg"); border-radius: 150px; }
    .img_box li.item2 .bg_box { background-image: url("./images/education02.jpg"); border-radius: 150px;}
    .img_box li .vs_tit { position:absolute; top:180px; left:100px; z-index:10; font-weight: 300; font-size: 60px; line-height: 1.3; }
    .img_box li .vs_tit { font-weight: 600; }
    .img_box li.active { visibility: visible; opacity: 1; }
    .img_box li .vs_tit { font-size:100px; color:#fff; }
    .btn_box li .vs_btn { display:block; width: 25px; height: 25px; background-color:rgba(255,255,255,0.8); border:2px solid #fff; position:absolute; top:100px; left: 100px; z-index:14; cursor:pointer; border-radius:50%; }
    .btn_box li.item2 .vs_btn { left: 132px; }
    .btn_box li.active .vs_btn { background-color: #fff; border:2px solid #333; }
    .vs_ra { display:none; }

    .play_btn { display:block; width: 12px; height: 12px; position:absolute; top:98px; left: 164px; z-index:14; cursor:pointer; color: #fff; border:0;  background-color: transparent; font-weight: 900; }

  </style>

</head>

<body>
  <div class="wrap">
    <div class="contents" id="contents">
      <figure class="vs">
        <ul class="img_box">
          <li class="item1 active">
            <input type="radio" name="vs_ra" id="vs_ra1" class="vs_ra" checked>
            <div class="bg_box"></div>
            <h2 class="vs_tit">가나다라마바사아자차카</h2>
          </li>
          <li class="item2">
            <input type="radio" name="vs_ra" id="vs_ra1" class="vs_ra" checked>
            <div class="bg_box"></div>
            <h2 class="vs_tit">ABCDEFGHIJKLMNopqr</h2>
          </li>
          <ul class="btn_box">
            <li class="item1 active"><label for="vs_ra1" class="vs_btn"></label></li>
            <li class="item2"><label for="vs_ra2" class="vs_btn"></label></li>
          </ul>
          <button type="button" class="play_btn"></button>
          <script>
            $(function(){
                $(".btn_box li .vs_btn").click(function(){
                    var par = $(this).parents("li").index();
                    $(".img_box li").removeClass("active");
                    $(".img_box li").eq(par).addClass("active");
                    $(".btn_box li").removeClass("active");
                    $(".btn_box li").eq(par).addClass("active");
                });
                var sw = 1;
                var int1 = setInterval(function(){
                    if(sw==1){
                        autoplay(1);
                        sw = 0;
                    } else {
                        autoplay(0);
                        sw = 1;
                    }
                }, 4000);

                function autoplay(n){
                    $(".img_box li").removeClass("active");
                    $(".img_box li").eq(n).addClass("active");
                    $(".btn_box li").removeClass("active");
                    $(".btn_box li").eq(n).addClass("active");
                }

                $(".play_btn").click(function(){
                    if($(this).hasClass("active")){
                        $(this).removeClass("active");
                        sw = 1;
                        int1 = setInterval(function(){
                            if(sw==1){
                                autoplay(1);
                                sw = 0;
                            } else {
                                autoplay(0);
                                sw = 1;
                            }
                        }, 3500);
                    } else {
                        $(this).addClass("active");
                        sw = 0;
                        clearInterval(int1);
                    }
                });
            });
          </script>
        </ul>
      </figure>
    </div>
  </div>
</body>
</html>
