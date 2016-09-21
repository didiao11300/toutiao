<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>博客分享平台</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0
    , initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="shortcut icon" href="${context}/res/img/favicon.ico">
        <link rel="Bookmark" href="${context}/res/img/favicon.ico">
    <link rel="stylesheet" href="${context}/res/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${context}/res/normalize.css">
    <link rel="stylesheet" type="text/css" href="${context}/res/style.css">
    <script src="${context}/res/jquery.min.js"></script>
    <script src="${context}/res/js/bootstrap.min.js"></script>
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
                            <li><a href="/explore">独家号</a></li>
                            <li><a href="/signin">分享</a></li>
                            <li><a href="/lastest">最新分享</a></li>
                            <!-- 登录时显示 -->
                            <!-- <li><a href="#">我的独家号</a></li> -->
                            <!-- 登录时显示 -->
                            <li><a href="/signin">我的订阅</a></li>
                            <li><a href="/search">搜索</a></li>
                            <!-- 未登录时显示 -->
                            <li><a href="/signin"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
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
    <div id="main">
        <div class="container" id="daily">
            <div class="scroll">
                <div class="scroll-added">
                    <div class="daily">
                        <h3 class="date">
                    <span>最新分享</span>
                    </h3>
                        <div class="posts">
                            <div class="post">
                                <div class="btn-group-vertical upvote">
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-thumbs-up"></i>
                                        <span></span>
                                    </a>
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-heart"></i>
                                        <span></span>
                                    </a>
                                </div>
                                <div class="content">
                                    <h3 class="title">
                                    <a href="https://g.chenjx.cn/" target="_blank">google 搜索原理系列 2.3</a>
                                    </h3>
                                    <div class="meta">
                                        <span>
                                        <i>
                                
                                        </i>
                                        389
                                    </span>
                                    </div>
                                </div>
                                <div class="user-info">
                                    <div class="user-avatar">
                                        <a href="#">
                                            <img width="32" src="${context}/res/img/moon-220x150.png">
                                        </a>
                                    </div>
                                    maoli-zjp</div>
                                <div class="subject-name">
                                    <a href="#">侦探事务所</a>
                                </div>
                            </div>
                            <div class="post">
                                <div class="btn-group-vertical upvote">
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-thumbs-up"></i>
                                        <span></span>
                                    </a>
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-heart"></i>
                                        <span></span>
                                    </a>
                                </div>
                                <div class="content">
                                    <h3 class="title">
                                    <a href="https://g.chenjx.cn/" target="_blank">google 搜索原理系列 2.2</a>
                                    </h3>
                                    <div class="meta">
                                        <span>
                                        <i>
                                
                                        </i>
                                        364
                                    </span>
                                    </div>
                                </div>
                                <div class="user-info">
                                    <div class="user-avatar">
                                        <a href="#">
                                            <img width="32" src="${context}/res/img/moon-220x150.png">
                                        </a>
                                    </div>
                                    maoli-zjp</div>
                                <div class="subject-name">
                                    <a href="#">侦探事务所</a>
                                </div>
                            </div>
                            <div class="post">
                                <div class="btn-group-vertical upvote">
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-thumbs-up"></i>
                                        <span></span>
                                    </a>
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-heart"></i>
                                        <span></span>
                                    </a>
                                </div>
                                <div class="content">
                                    <h3 class="title">
                                    <a href="https://g.chenjx.cn/" target="_blank">google 搜索原理系列 2.1</a>
                                    </h3>
                                    <div class="meta">
                                        <span>
                                        <i>
                                
                                        </i>
                                        343
                                    </span>
                                    </div>
                                </div>
                                <div class="user-info">
                                    <div class="user-avatar">
                                        <a href="#">
                                            <img width="32" src="${context}/res/img/moon-220x150.png">
                                        </a>
                                    </div>
                                    maoli-zjp</div>
                                <div class="subject-name">
                                    <a href="#">侦探事务所</a>
                                </div>
                            </div>
                            <div class="post">
                                <div class="btn-group-vertical upvote">
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-thumbs-up"></i>
                                        <span></span>
                                    </a>
                                    <a class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left" href="#">
                                        <i class="glyphicon glyphicon-heart"></i>
                                        <span></span>
                                    </a>
                                </div>
                                <div class="content">
                                    <h3 class="title">
                                    <a href="https://g.chenjx.cn/" target="_blank">google 搜索原理系列 2.0</a>
                                    </h3>
                                    <div class="meta">
                                        <span>
                                        <i>
                                
                                        </i>
                                        312
                                    </span>
                                    </div>
                                </div>
                                <div class="user-info">
                                    <div class="user-avatar">
                                        <a href="#">
                                            <img width="32" src="${context}/res/img/moon-220x150.png">
                                        </a>
                                    </div>
                                    maoli-zjp</div>
                                <div class="subject-name">
                                    <a href="#">侦探事务所</a>
                                </div>
                            </div>
                            <nav class="text-center">
                                <ul class="pagination">
                                    <li class="page active"><a href="#">1</a></li>
                                    <li class="page"><a href="#">2</a></li>
                                    <li class="page"><a href="#">3</a></li>
                                    <li class="page"><a href="./lastest-4.html">4</a></li>
                                    <li class="page"><a href="./lastest-5.html">5</a></li>
                                    <li class="page disabled"><a href="#">...</a></li>
                                    <li class="next"><a href="#">&raquo;</a></li>
                                    <li class="last"><a href="./lastest-end.html">末页</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </div>
    <!-- 触发 button 的tooltip -->
    <script>
    $(function() {
        $("[data-toggle='tooltip']").tooltip();
    });
    </script>
    <!-- 触发 button 的tooltip -->
</body>

</html>