<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
<form action="check.jsp" method="post">
    <label for="username">用户名：</label>
    <input type="text" name="username" id="username" required><br/>

    <label for="password">密码：</label>
    <input type="password" name="password" id="password" required><br/>

    <input type="checkbox" id="rememberMe" name="rememberMe" value="true">
    <label for="rememberMe">保存用户名和密码</label>

    <script>
        $(document).ready(function() {
            var usernameCookie = readCookie("username");
            var passwordCookie = readCookie("password");

            if (usernameCookie && passwordCookie) {
                $('#username').val(usernameCookie);
                $('#password').val(passwordCookie);
            }

            $('#rememberMe').change(function() {
                var username = $('#username').val();
                var password = $('#password').val();

                if ($(this).is(':checked')) {
                    createCookie("username", encodeURIComponent(username), 7);
                    createCookie("password", encodeURIComponent(password), 7); // 仅为示例，实际中不应明文存储密码
                } else {
                    eraseCookie("username");
                    eraseCookie("password");
                }
            });

            // Cookie操作辅助函数
            function createCookie(name, value, days) {
                var expires = "";
                if (days) {
                    var date = new Date();
                    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                    expires = "; expires=" + date.toUTCString();
                }
                document.cookie = name + "=" + (value || "")  + expires + "; path=/";
            }

            function readCookie(name) {
                var nameEQ = name + "=";
                var ca = document.cookie.split(';');
                for (var i = 0; i < ca.length; i++) {
                    var c = ca[i];
                    while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                    if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length, c.length));
                }
                return null;
            }

            function eraseCookie(name) {
                createCookie(name, "", -1);
            }
        });
    </script>

    <input type="submit" value="登录">
</form>
</body>
</html>
