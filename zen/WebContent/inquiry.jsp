<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <meta http-equiv="Content-Style-Type" content="text/css" />
      <meta http-equiv="Content-Script-Type" content="text/javascript" />
      <meta http-equiv="imagetoolbar" content="no" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />
	  <link rel="stylesheet" type="text/css" href="./css/inquiry.css">
      <title>お問い合わせ</title>

</head>
<body>
<header>
		<jsp:include page="header.jsp" flush="true" />
	</header>


	<div id="haikei">


		<div id="top">
			<p>お問い合わせ・リクエスト</p>
		</div>
			<s:form method="post" action="InquiryCompleteAction">
        <table class="table">
            <tbody>
			<tr>
                <th>お名前</th>
                <td><input type="text" size="40" name="name"/></td>
            </tr>
			<tr>
                <th>メールアドレス</th>
                <td><input type="text" size="40" name="mailaddress"/></td>
            </tr>
            <tr>
			     <th>お問い合わせの種類</th>
                 <td><select name="qtype">
								<option value="product">商品について</option>
								<option value="request">商品リクエスト</option>
								<option value="others">その他</option>
								</select></td>
            </tr>
            <tr>
                <th>お問い合わせ内容</th>
			     <td><s:textarea name="body" wrap="hard" cols="40" rows="10"/></td>
            </tr>
             </tbody>
             </table>
            <div class="text-center">
	           <s:submit class="button" value="送信"/>
                </div>
            </s:form>
            <div class="back">
					<p>Homeへ戻る場合は
				<a href='<s:url action="GoHomeAction"/>'>こちら</a></p></div>
            </div>






<footer>
		<jsp:include page="footer.jsp" flush="true" />
	</footer>
</body>
</html>