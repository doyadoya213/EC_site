<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" type="text/css" href="./css/header.css">
<title>HOME</title>
</head>
<!--Header共通-->
<header>

	<div class="icon" style="height: 0px;">
		<a href='<s:url action="GoHomeAction"/>'><img
			src="./images/iconzen.png" style="width: 30%; height: 120px;"></a>
	</div>

	<div class="search" style="height: 0px;">
		<s:form action="ProductSearchAction" method="post" id="form1">

			<div class="search1">
				<label> <select name="category" class="select1">
						<option value="">カテゴリ選択</option>
						<option value="全商品">全商品</option>
						<option value="焼酎">焼酎</option>
						<option value="日本酒">日本酒</option>
						<option value="ウィスキー">ウィスキー</option>
						<option value="ワイン">ワイン</option>
				</select>
				</label>
			</div>

			<div class="search2">
				<input class="box1" type="search" name="searchWord"
					placeholder="商品名を入れてください" autofocus>
			</div>

			<div class="search3">
				<input type="image" width="13%" height="35px"
					src="./images/search.png">
			</div>
		</s:form>

	</div>

	<ul>
		<li><s:if test="#session.loginFlg">
		ようこそ! <s:property value="#session.loginFirstName" />さん
	</s:if> <s:else>
		ようこそ!ゲストさん
	</s:else></li>
		<li><a href='<s:url action="ProductListAction"/>'>商品一覧</a></li>
		<li><a href='<s:url action="CartAction"/>'>カート</a></li>

		<s:if test="#session.loginFlg">
			<li><a href='<s:url action="MyPageAction"/>'>マイページ</a></li>
			<li><a href='<s:url action="LogoutAction"/>'>ログアウト</a></li>
		</s:if>

		<li><s:if test="#session.loginFlg">
			</s:if> <s:else>
				<a href='<s:url action="GoLoginAction"/>'>ログイン</a>
			</s:else></li>
	</ul>

	<div class="border"></div>

</header>
<!--共通-->