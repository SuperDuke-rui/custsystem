<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var usercode = $("#usercode").val();
    var password = $("#password").val();
    if(usercode=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}
</script>
</head>

<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">

<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
		<input type="hidden" id="opflag" name="opflag" value="0"/>
			<div class = "top_blank"></div>
				<div class = "container">
					<div id = "header">
						<h1>客户信息管理系统-登录页面</h1>				
					</div>
					<div id = "content">
						<div id = "left">
							<p>欢迎登录本系统！</p>
						</div>

						<font color="red">
							 <%-- 提示信息--%>
							 <span id="message">${msg}</span>
						</font>

							<div id = "right">
							
                      			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
							          账&nbsp;号：<input id="usercode" type="text" name="usercode" />
							          <br /><br />
							          密&nbsp;码：<input id="password" type="password" name="password" />
							          <br /><br />
					          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					          <input type="submit" value="登录" />
							 
								</div>
							</div>
							<div id = "footer">
						<p>Copyright&copy; 2001-2020 XXX公司  版权所有</p>
					</div>
				</div>
			</form>
</body>
</html>
