<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<script type="text/javascript">
	//チェックリストにチェックを入れてなかったときに警告をだす
	var chooseList = document.getElementsByName('chooseList');
	function checkBox() {
		for (var i = 0; i < chooseList.length; i++) {
			if (chooseList[i].checked)
				return true;
		}
		alert('商品を選択してください');
		return false;
	}
</script>

<title>カート画面</title>
</head>
<body>

<h2>カート情報一覧</h2>
こんにちは、<s:property value="user_id" />さん！

<s:form action="CartDeleteAction" name="form" onsubmit="return checkBox();">
		<s:iterator value="cartList">
		<img src="<s:property value='image_file_path'/>" width="250" height="200">
		<br>
		<input type="checkbox" name="chooseList" value='<s:property value="product_id"/>'>
		<br>
		<label>テストのために表示（商品ID）：</label>
		<s:property value="product_id" />
		<br>
		<label>商品名：</label>
		<s:property value="product_name" />
		<br>
		<label>商品名（かな）：</label>
		<s:property value="product_name_kana" />
		<br>
		<label>商品詳細：</label>
		<s:property value="product_description" />
		<br>
		<label>値段：</label>
		<s:property value="price" />
		<br>
		<label>発売会社名：</label>
		<s:property value="release_company" />
		<br>
		<label>発売年月日：</label>
		<s:property value="release_date" />
		<br>
		<label>個数：</label>
		<s:property value="product_count" />
		<br>
		<label>商品ごとの合計金額：</label>
		<s:property value="product_total_price" />
		<br>
		</s:iterator>
		<br>

		<input type="submit" value="選択削除"/>
</s:form>

<br>
<label>合計金額：</label>
<s:property value="session.total_price" />

<h3><s:property value="message" /></h3>
<h4><span style="color:red"><s:property value="ERROR_MESSAGE" /></span></h4>

<div id="text-center">
	<s:form action="AllCartDeleteAction">
		<s:submit value="全削除" />
	</s:form>
</div>

<div id="text-center">
	<s:form action="ProductListAction">
		<s:submit value="商品一覧へ" />
	</s:form>
</div>

<div id="text-center">
	<s:form action="PaymentAction">
		<s:submit value="決済画面へ" />
	</s:form>
</div>

</body>
</html>