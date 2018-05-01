<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Scrip-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<title>購入完了画面</title>
<style type="text/css">
/* ==========TAG LAYOUT======== */
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ==========ID LAYOUT======== */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
}

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: black;
	clear: both;
}
</style>
</head>
<body>
	<div id="header">
		<div id="pr"></div>
	</div>

	<div id="main">
		<div id="top">
			<p>お買い上げありがとうございました。</p>
		</div>

		<div>
			<p>
				購入手続きが完了致しました。 <br> またのご利用お待ちしております。購入履歴はマイページで確認できます。
			<p>
			<div>
				<p>
					<s:form action="MyPageAction">
						<s:submit value="マイページ" />
					</s:form>
				</p>
				<p>
					<s:form action="LogoutAction">
						<s:submit value="ログアウト" />
					</s:form>
				</p>
				<p>
					<s:form action="GoHomeAction">
						<s:submit value="ホーム" />
					</s:form>
				</p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr"></div>
	</div>

</body>
</html>