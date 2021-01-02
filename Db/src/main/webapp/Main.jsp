<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style>
        .context{
            display: flex;
        }
        .mynav{

        }
        .dropdown-menu{
            display: none;
        }
        .mynav:hover .dropdown-menu{
            display: block;
        }

        .context{
            display: flex;

        }
        .item{
            /*border: 1px solid red;*/
            margin: 2.5%;
            width: 20%;
        }
        .item:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            transition: 500ms;
        }

        .wid{
            width: 100%;
        }
        .main{
            background-color: aliceblue;
        }
        .itemul{
            margin-top: 30px;
            width: 50%;
        }
        .itemul a{
            color: black;
            font-size: 25px;
            display: flex;
            height: 15%;
        }
        .itemul a:hover{
            text-decoration: none;
            color: #60b9db;
        }
        .kk{
            font-size: 30px;
            margin: 10px 0 0 15px;
        }
        .lef{
            width: 50%;
        }
        .hh{
            margin: 0 10px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light " style="background-color: darkcyan" >
    <a class="navbar-brand" href="https://www.nefu.edu.cn/"><img src="asserts/logo.jpg"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">专业介绍 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown mynav">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdow" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    实验室
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">923创新实验室</a>
                    <a class="dropdown-item" href="#">925移动开发实验室</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item dropdown mynav">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    教师队伍
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">教授</a>
                    <a class="dropdown-item" href="#">副教授</a>
                    <a class="dropdown-item" href="#">讲师</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item dropdown mynav">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    教育教学
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">研究生教育</a>
                    <a class="dropdown-item" href="#">本科生教育</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class=" dropdown mynav">
                <a href="Read" class="nav-link ">新闻公告</a>
            </li>
        </ul>
<!--        <form class="form-inline my-2 my-lg-0">-->
        <a href="login"><button class="btn btn-outline-success my-2 my-sm-0 hh" type="submit">后台管理</button></a>
<!--        </form>-->
    </div>
</nav>

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="asserts/4.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="asserts/img.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="asserts/1.png" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="asserts/3.png" class="d-block w-100" alt="...">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<%--<input type ="button" value="跳转" οnclick="window.location.href='cs.html'">--%>

<%--<a href="cs.html">跳转</a>--%>

<div class="main">
<div class="context">
    <div class="itemul">
        <div style="display: flex">
            <img src="https://www.nefu.edu.cn/2019images/icon002.png" style="width: 50px;height: 50px">
            <div class="kk">
                新闻公告
            </div>
        </div>
        <hr>
        <div class="ulnew">
            <c:forEach items="${Rusers }" var="u">
                <a href=""><div class="lef">${u.name } </div> <div> ${u.insertTime}</div></a>
            </c:forEach>

        </div>
    </div>
<%--    <div class="item">--%>
<%--        <img src="asserts/mod/img_5.png" class="wid" alt="...">--%>
<%--        <p>--%>
<%--            北京时间11月23日凌晨，2020年国际遗传工程机器设计大赛（International Genetic Engineering Machine Competition，简称iGEM）落下帷幕，我校团队凭借“生物探雷工兵”项目喜获金奖，这也是林大学子在该项比赛中连续第四年获得金奖。--%>

<%--        </p>--%>
<%--    </div>--%>
    <div class="item">
        <img src="asserts/mod/img_6.png" class="wid" alt="...">
        <p>
            北京时间11月23日凌晨，2020年国际遗传工程机器设计大赛（International Genetic Engineering Machine Competition，简称iGEM）落下帷幕，我校团队凭借“生物探雷工兵”项目喜获金奖，这也是林大学子在该项比赛中连续第四年获得金奖。

        </p>
    </div>
    <div class="item">
        <img src="asserts/mod/img_7.png" class="wid" alt="...">
        <p>
            北京时间11月23日凌晨，2020年国际遗传工程机器设计大赛（International Genetic Engineering Machine Competition，简称iGEM）落下帷幕，我校团队凭借“生物探雷工兵”项目喜获金奖，这也是林大学子在该项比赛中连续第四年获得金奖。

        </p>
    </div>
</div>
<div class="context">
    <div class="item">
        <img src="asserts/mod/img.png" class="wid" alt="...">
        <p>
            北京时间11月23日凌晨，2020年国际遗传工程机器设计大赛（International Genetic Engineering Machine Competition，简称iGEM）落下帷幕，我校团队凭借“生物探雷工兵”项目喜获金奖，这也是林大学子在该项比赛中连续第四年获得金奖。

        </p>
    </div>
    <div class="item">
        <img src="asserts/mod/img_1.png" class="wid" alt="...">
        <p>
            北京时间11月23日凌晨，2020年国际遗传工程机器设计大赛（International Genetic Engineering Machine Competition，简称iGEM）落下帷幕，我校团队凭借“生物探雷工兵”项目喜获金奖，这也是林大学子在该项比赛中连续第四年获得金奖。

        </p>
    </div>
    <div class="item">
        <img src="asserts/mod/img_2.png" class="wid" alt="...">
        <p>
            北京时间11月23日凌晨，2020年国际遗传工程机器设计大赛（International Genetic Engineering Machine Competition，简称iGEM）落下帷幕，我校团队凭借“生物探雷工兵”项目喜获金奖，这也是林大学子在该项比赛中连续第四年获得金奖。

        </p>
    </div>
    <div class="item">
        <img src="asserts/mod/img_3.png" class="wid" alt="...">
        <p>
            北京时间11月23日凌晨，2020年国际遗传工程机器设计大赛（International Genetic Engineering Machine Competition，简称iGEM）落下帷幕，我校团队凭借“生物探雷工兵”项目喜获金奖，这也是林大学子在该项比赛中连续第四年获得金奖。

        </p>
    </div>
</div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>
    //取出传回来的参数error并与yes比较
    var errori ='<%=request.getParameter("error")%>';
    if(errori=='yes'){
        alert("登录失败!");
    }
</script>
</body>
</html>