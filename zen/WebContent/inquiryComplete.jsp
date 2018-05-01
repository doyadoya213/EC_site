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
     <link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./css/inquiryComplete.css">

     <style>
@import url('https://fonts.googleapis.com/css?family=Noto+Serif');
</style>

<title>お問い合わせ完了</title>
</head>
<body>

	<div id="main">

		<div id="haikei">
		<div id="top">
			送信が以下の内容で完了しました。<br>
			三営業日以内に担当より返信致します。<br>返信がない場合は大変お手数ですが再度フォームより送信をお願い致します。
		</div>
		<div>
			<table class="table">
            	<tbody>
				<tr>
						<th>お名前</th>
					<td>
						<s:property value="name"/>
					</td>
				</tr>
				<tr>
						<th>メールアドレス</th>
					<td>
					<s:property value="mailaddress"/>
					</td>
				</tr>
				<tr>
						<th>お問い合わせの種類</th>
					<td>
						<s:property value="qtype"/>
					</td>
				</tr>
				<tr>
						<th>内容</th>
					<td>
						<s:property value="body"/>
					</td>
				</tr>

			</table>
			<br>
			<br>
				<p>Homeへ戻る場合は
				<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			</div>
		</div>
	</div>
	<div id="footer">
		<div id="pr">
		</div>
	</div>
</body>
</html>