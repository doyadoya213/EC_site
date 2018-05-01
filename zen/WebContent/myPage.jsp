<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta http-equiv="Content-Style-Type" content="text/css" />
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script type="text/javascript" src="js/jquery.jInvertScroll.js"></script>
      <script type="text/javascript" src="./js/script.js"></script>
      <link rel="stylesheet" type="text/css" href="./css/myPage.css">
      <title>HOME</title>
</head>
  <body>


<body>
<!-- ヘッダー -->
	<jsp:include page="header.jsp" />

<div class="main">

<div id="back"></div><!--背景色に使いたいだけの要素-->

<div class="container">

<div class="box-colum clearfix">
<div class="box-column float-left w66">

<!-- パスワード再設定画面はここから -->
<div class="resetpassword">
<h2 class="heading">会員情報</h2>
<p></p>



<table class="table">
<tbody>
<tr>
<th>名前</th>
<td>
<s:iterator value="myPageList">
 <s:property value="familyName"/><s:property value="firstName"/>
 </s:iterator>
</td>
</tr>
<tr>
<th>ふりがな</th>
<td>
 <s:iterator value="myPageList">
 <s:property value="familyNameKana"/><s:property value="firstNameKana"/>
 </s:iterator>
</td>
</tr>
<tr>
<th>性別</th>
<td>
 <s:iterator value="myPageList">
 <s:property value="sex"/>
 </s:iterator>
</td>
</tr>
<tr>
<th>E-mail</th>
<td>
<s:iterator value="myPageList">
<s:property value="email"/>
</s:iterator>
</td>
</tr>
<tr>
<th>ユーザーID</th>
<td>
<s:iterator value="myPageList">
<s:property value="userId"/>
</s:iterator>
</td>
</tr>
<tr>
<th>パスワード</th>
<td>
<s:iterator value="myPageList">
<s:property value="password"/>
</s:iterator>
</td>
</tr>
</tbody>
</table>

    </div>
</div>
</div>
    </div>




<div class="container2">
<p><a href='<s:url action="BuyItemHistoryAction"/>'>購入履歴</a></p>
<p><a href='<s:url action="LogoutAction"/>'>ログアウト</a></p>
<p><a href='<s:url action="GoHomeAction"/>'>HOME</a></p>
</div>

</div>

<!-- フッター -->
<jsp:include page="footer.jsp" />

</body>
</html>