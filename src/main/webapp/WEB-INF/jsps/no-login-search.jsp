<!DOCTYPE html>
<html>

<head>
    <title>博客分享平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="stylesheet" href="../res/css/bootstrap.min.css">
    <!-- 增强跨浏览器表现的一致性,引入 normalize.css 文件 -->
    <link rel="stylesheet" type="text/css" href="../res/normalize.css">
    <link rel="stylesheet" type="text/css" href="../res/style.css">
    <script src="../res/jquery.min.js"></script>
    <script src="../res/js/bootstrap.min.js"></script>
</head>

<body>
    <header class="navbar navbar-default navbar-static-top bs-docs-nav no-margin-bottom" id="top" role="banner">
        <div class="contrainer">
            <nav class="navbar navbar-default no-margin-bottom" role="navigation">
                <div class="container self-contrainer">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                            <span class="sr-only">切换导航</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">星月博客</a>
                    </div>
                    <div class="collapse navbar-collapse" id="example-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="./explore-no-login.html">独家号</a></li>
                            <li><a href="./user-login.html">分享</a></li>
                            <li><a href="./lastest-no-login.html">最新分享</a></li>
                            <!-- 登录时显示 -->
                            <!-- <li><a href="#">我的独家号</a></li> -->
                            <!-- 登录时显示 -->
                            <li><a href="./user-login.html">我的订阅</a></li>
                            <li><a href="#">搜索</a></li>
                            <!-- 未登录时显示 -->
                            <li><a href="./index-login.html"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
                            <li><a href="#">关于我们</a></li>
                            <li><a href="#">IO币介绍</a></li>
                            <!-- 未登录时显示 -->
                            <!-- 登录时显示 -->
                            <!-- <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Java
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">我的收藏</a></li>
                                <li><a href="./user-contribute.html">我的分享</a></li>
                                <li><a href="#">我的关注</a></li>
                                <li><a href="#">我的IO币:</a></li>
                                <li><a href="./settings.html">个人设置</a></li>
                                <li><a href="#">退出</a></li>
                            </ul>
                        </li> -->
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <div id="main" style="margin:20px">
        <div class="container">
            <form role="form">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="search">
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </span>
                </div>
            </form>
        </div>
    </div>
</body>