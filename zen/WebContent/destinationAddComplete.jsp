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

<title>宛先情報完了画面</title>

</head>

<body>
こんにちは、<s:property value="user_id" />さん！

<h3><s:property value="SUCCESS_MESSAGE" /></h3>

<div id="text-center">
	<s:form action="PaymentAction">
		<s:submit value="決済画面へ" />
	</s:form>
</div>

</body>
</html>