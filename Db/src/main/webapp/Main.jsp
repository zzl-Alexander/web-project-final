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
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        ul,li{
            list-style: none;
        }
        a{
            text-decoration: none;
        }
        .fontsize{
            font-size: 25px;
            text-align: center;
        }
        /*整个导航栏*/
        .nav{
            display: flex;
            align-items: center;
            position: relative;
            background: darkcyan;
        }
        /*导航的每一块*/
        .item{
            text-align: center;
        }
        .nav a{
            display: block;
            padding: 15px 25px;
            text-decoration: none;
            background-color: darkcyan;
            color: white;
        }

        .header ul{
            display: none;
            position: absolute;
        }
        .nav ul a:hover{
            background-color: lightgrey;
        }
        .item:hover ul{
            color: white;
            display: block;
        }
        .content{
            margin: 10px;
        }
        h1{
            text-align: center;
        }
        p{
            text-indent: 2em;
        }

        /*以上是导航*/


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
            transition: 1000ms;
        }
        .item:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            transition: 1000ms;
            transform: translate(0,-5px);
        }

        .wid{
            width: 100%;
        }
        .main{
            background-color: aliceblue;
        }
        .itemul{
            padding: 20px;
            margin-top: 30px;
            width: 50%;
            /*box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
        }
        .itemul:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
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
            width: 40%;
            color: darkcyan;
        }
        .hh{
            margin: 0 10px;
        }
        .footer{
            bottom: 0;
            width: 100%;
            margin: auto;
            text-align: center;
            background-color: darkcyan;
            color: white;
        }
        #footer-img{
            width: 100%;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light " style="background-color: darkcyan" >
    <a class="navbar-brand" href="Main"><img src="asserts/logo.jpg"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

            <li class="nav-item dropdown mynav">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    专业相关
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="Child/introdu/1.html" target="_blank">专业介绍</a>
                    <a class="dropdown-item" href="Child/introdu/2.html" target="_blank">专业方向</a>
                </div>
            </li>
            <li class="nav-item dropdown mynav">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown11" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    教师队伍
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="Child/Teacher/1.html" target="_blank">教授</a>
                    <a class="dropdown-item" href="Child/Teacher/2.html" target="_blank">副教授</a>
                    <a class="dropdown-item" href="Child/Teacher/3.html" target="_blank">讲师</a>

                </div>
            </li>

            <li class="nav-item dropdown mynav">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdow" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    实验室
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="Child/experiment/1.html">923创新实验室</a>
                    <a class="dropdown-item" href="Child/experiment/2.html">925移动开发实验室</a>

                </div>
            </li>
            <li class=" dropdown mynav">
                <a href="Child/introdu/3.html" class="nav-link " target="_blank">就业指导</a>
            </li>
            <li class=" dropdown mynav">
                <a href="Read" class="nav-link " target="_blank">新闻公告</a>
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

<%--<a href="Child/cs.html" target="_blank">跳转</a>--%>



<%--                                 context                                        --%>

<div class="main">
    <div class="context">
        <div class="itemul">
            <div style="display: flex">
                <img src="https://www.nefu.edu.cn/2019images/icon001.png" style="width: 50px;height: 50px">
                <div class="kk">
                    最新新闻
                </div>
            </div>
            <hr>
            <div class="ulnew">
                <c:forEach items="${Rusers }" var="u">
                    <a href="getuser?uid=${u.id}" target="_blank"><div class="lef"> <fmt:formatDate pattern="yyyy-MM-dd" value="${u.insertTime}"></fmt:formatDate></div><div>${u.name } </div> </a>
                </c:forEach>
                <%--            <c:forEach items="${users }" var="u">--%>
                <%--                <li><a href="getuser?uid=${u.id}">${u.name }</a></li>--%>
                <%--            </c:forEach>--%>
            </div>
        </div>
        <div class="item">
            <img src="asserts/mod/img_44.png" class="wid" alt="...">
            <p>
                学校上下一盘棋，齐心合力，扎实推动文明校园创建工作。加强政治引领，开展“不忘初心、牢记使命”主题教育，认真学习党的创新理论和精神文明建设政策文件，为实际工作提供遵循；持续深入开展学校文明创建工作，营造出风清气正、团结向上、奋发有为的良好氛围.
            </p>
        </div>
        <div class="item">
            <img src="asserts/mod/img_55.png" class="wid" alt="...">
            <p>
                第十届中国教育机器人大赛日前在广东省东莞市松山湖光大We谷隆重举行。经过两天激烈角逐，我校参赛学子获得全国一等奖2项、全国二等奖5项，全国三等奖3项的优异成绩。
                人工智能学会主办，松山湖国际机器人研究院承办。
            </p>
        </div>
<%--        <div class="item">--%>
<%--            <img src="asserts/mod/img_44.png" class="wid" alt="...">--%>
<%--            <p>--%>
<%--                学校上下一盘棋，齐心合力，扎实推动文明校园创建工作。加强政治引领，开展“不忘初心、牢记使命”主题教育，认真学习党的创新理论和精神文明建设政策文件，为实际工作提供遵循；持续深入开展学校文明创建工作，营造出风清气正、团结向上、奋发有为的良好氛围.--%>
<%--            </p>--%>
<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <img src="asserts/mod/img_55.png" class="wid" alt="...">--%>
<%--            <p>--%>
<%--                第十届中国教育机器人大赛日前在广东省东莞市松山湖光大We谷隆重举行。经过两天激烈角逐，我校参赛学子获得全国一等奖2项、全国二等奖5项，全国三等奖3项的优异成绩。--%>
<%--                人工智能学会主办，松山湖国际机器人研究院承办。--%>
<%--            </p>--%>
<%--        </div>--%>
    </div>
    <div class="context">

        <div class="item">
            <img src="asserts/mod/img_22.png" class="wid" alt="...">
            <p>
                2月31日，在黑龙江省林业和草原局七楼会议室，我校与黑龙江省森林植物园签署了科研合作协议。黑龙江省林草局党组书记、局长王东旭，二级巡视员孙永刚，省森林植物园主任苏世河、副主任李洪林，我校李斌校长、刘守新副校长出席签约仪式。

                李斌校长感谢省林草局对东林发展的大力支持。
            </p>
        </div>
        <div class="item">
            <img src="asserts/mod/img_33.png" class="wid" alt="...">
            <p>
                10月27日晚，学校在新体育馆举办抗疫精神主题讲座。全国卫生健康系统新冠肺炎疫情防控工作先进个人、全国优秀共产党员、黑龙江省第一批援鄂医疗队哈医大二院医疗队队长、哈尔滨医科大学附属第二医院重症医学科主任王洪亮教授做了题为《白袍加身 一场必胜的战役》的讲座。
            </p>
        </div>
        <div class="itemul">
            <div style="display: flex">
                <img src="https://www.nefu.edu.cn/2019images/icon002.png" style="width: 50px;height: 50px">
                <div class="kk">
                    最新公告
                </div>
            </div>
            <hr>
            <div class="ulnew">
                <c:forEach items="${Nousers }" var="u">
                    <a href="getuser?uid=${u.id}" target="_blank"><div class="lef"> <fmt:formatDate pattern="yyyy-MM-dd" value="${u.insertTime}"></fmt:formatDate></div><div>${u.name } </div> </a>
                </c:forEach>
                <%--            <c:forEach items="${users }" var="u">--%>
                <%--                <li><a href="getuser?uid=${u.id}">${u.name }</a></li>--%>
                <%--            </c:forEach>--%>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <img src="asserts/mod/footer-img.jpg" id="footer-img">
    <p>东北林业大学<br>
        2018级软件工程3班张子龙</p>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/js/bootstrap.min.js"></script>
<script>
    //取出传回来的参数error并与yes比较
    var errori ='<%=request.getParameter("error")%>';
    if(errori=='yes'){
        alert("登录失败!");
    }
</script>
</body>
</html>