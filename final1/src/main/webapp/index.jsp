<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<style type="text/css">
    body {
        margin: 0;
        padding: 0;
    }
    .login {
        height: 600px;
    }
    .box {
        position: relative;
        top: 50%;
        margin-top: -190px;
        background: #5998ff;
        height: 300px;
    }
    .title {
        text-align: center;
        position: relative;
        top: 15%;
        margin-top: -50px;
        font-size: 30px;
        font-weight: 700px;
    }
    .innerBox {
        position: relative;
        background: white;
        box-shadow: 0px 0px 5px gray;
        width: 300px;
        left: 50%;
        margin-left: 50px;
        height: 300px;
        border-radius: 5px;
    }
    table {
        position: relative;
        top: 20px;
        height: 160px;
        width: 300px;
        left: 50%;
        margin-left: -150px;
        padding: 20px;
    }
    table tr th {
        font-size: 30px;
        height: 40px;
    }
    table tr td {
        height: 50px;
    }
    input {
        width: 100%;
        height: 30px;
    }
</style>
<body>
<div class="login">
    <div class="title">XXX管理系统登录页面</div>
    <div class="box">
        <div class="innerBox">
            <form action="/login/doLogin" method="post">
                <table>
                    <thead><tr><th colspan="2" >用户登录</th></tr></thead>
                    <tr><td align="right">用户：</td><td><input type="text" name="username"></td></tr>
                    <tr><td align="right">密码：</td><td><input type="password" name="password"></td></tr>
                    <tr><td colspan="2" align="center"><input type="submit" value="登录"></td></tr>
                </table>
            </form>
            <div class="error" style="padding-left: 25px;color: red">${error}</div>
        </div>
    </div>
</div>
</body>
</html>
