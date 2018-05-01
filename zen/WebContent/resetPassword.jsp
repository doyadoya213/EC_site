<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta http-equiv="Content-Style-Type" content="text/css" />
      <meta http-equiv="Content-Script-Type" content="text/javascript" />
      <meta http-equiv="imagetoolbar" content="no" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />
<link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="./css/resetPassword.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Noto+Serif');
</style>
<title>ログイン再設定画面</title>

</head>
<body>

<header>
		<jsp:include page="header.jsp" flush="true" />
	</header>
<div id="haikei">





<!-- パスワード再設定画面はここから -->
<div id="top">
<p>ログインパスワード変更</p>
<p>ログインIDと新ログインパスワードの両方を入力してださい。</p>
</div>

<s:form action="ResetPasswordConfirmAction">

<table class="table">
<tbody>
<tr>
<th>ログインID</th>
<td>
<s:textfield name="loginUserId" placeholder="1～8文字以内半角英数字"/>
</td>
</tr>

<s:if test="loginUserIdList.size > 0">
	<s:iterator value="loginUserIdList">
	<tr><td>
		<p><s:property /></p>
</td></tr>
	</s:iterator>
</s:if>


<tr>
<th>新しいログインパスワード</th>
<td>
<s:password name="loginPassword" placeholder="1～16文字以内半角英数字"/>
</td>
</tr>

<s:if test="loginPasswordList.size > 0">
	<s:iterator value="loginPasswordList">

		<p><s:property /></p>

	</s:iterator>
</s:if>


<tr>
<th>新しいログインパスワード（確認用）</th>
<td>
<s:password name="loginPasswordConfirm" placeholder="1～16文字以内半角英数字"/>
</td>
</tr>

<s:if test="loginPasswordConfirmList.size > 0">
	<s:iterator value="loginPasswordConfirmList">
<tr><td>
		<p><s:property /></p>
</td></tr>
	</s:iterator>
</s:if>


</tbody>
</table>
<div class="text-center">
<s:submit class="button" value="送信"/>
</div>
</s:form>
</div>

<footer>
		<jsp:include page="footer.jsp" flush="true" />
	</footer>

    </body>
    </html>
