<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<title>宛先情報確認画面</title>

<style type="text/css">
table th, table td {
    padding: 10px;
    vertical-align: top;
    text-align: left;
    border: 1px solid #ABABAB;
}

table {
  border-collapse: collapse;
}

table th {
	width: 100px;
}

table td {
	width: 450px;
}
</style>
</head>

<body>
こんにちは、<s:property value="user_id" />さん！

<h3>登録する宛先情報は以下でよろしいですか？</h3>

<s:form action="DestinationAddCompleteAction">
<table>
	<tr>
		<th>姓</th>
		<td>
		<s:property value="family_name" escape="false" />
		</td>
	</tr>
	<tr>
		<th>名</th>
		<td>
		<s:property value="first_name" escape="false" />
		</td>
	</tr>
	<tr>
		<th>姓（かな）</th>
		<td>
		<s:property value="family_name_kana" escape="false" />
		</td>
	</tr>
	<tr>
		<th>名（かな）</th>
		<td>
		<s:property value="first_name_kana" escape="false" />
		</td>
	</tr>
	<tr>
		<th>住所</th>
		<td>
		<s:property value="user_address" escape="false" />
		</td>
	</tr>
	<tr>
		<th>電話番号</th>
		<td>
		<s:property value="tel_number" escape="false" />
		</td>
	</tr>
	<tr>
		<th>Email</th>
		<td>
		<s:property value="email" escape="false" />
		</td>
	</tr>
	</table>
	<br>
	<s:submit value="完了" />

</s:form><br>

<s:form action="DestinationAddAction" id="form" name="form">
	<s:submit value="修正する" onclick="DestinationAddAction();">
		<s:hidden name="family_name" value='<s:property value="family_name" escape="false" />' />
	</s:submit>
</s:form>

</body>
</html>