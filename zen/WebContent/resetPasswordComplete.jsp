<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="3;URL='./GoHomeAction'" />
<title>パスワード変更完了</title>
<style type="text/css">
.heading{
font-size:18px;/*フォントの大きさ*/
border: 1px solid #ccc;/*したのボーダー*/
border-top: 2px solid #16a765;/*上のボーダー*/
margin-bottom: 15px;
padding:8px 15px;
}
</style>
</head>
<body>
<header>
		<jsp:include page="header.jsp" flush="true" />
	</header>
<div class="resetpasswordconfirm">
<h2 class="heading">パスワード変更完了</h2>
<p>
パスワードの再設定が完了しました。
３秒後にホーム画面に切り替わります。
</p>
</div>
<footer>
		<jsp:include page="footer.jsp" flush="true" />
	</footer>
</body>
</html>