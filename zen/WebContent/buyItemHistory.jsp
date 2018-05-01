<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css" href="./css/buyItemHistory.css">

<title>購入履歴</title>

</head>
<body>
	<!--全ページ共通-->


<jsp:include page="header.jsp" />





	<s:if test="buyItemHistoryList == null">

		<h3>ご購入情報はありません。</h3>

	</s:if>



	<div id="main">

		<s:elseif test="message == null">



			<h3>ご購入情報は以下になります。</h3>

			<br>
			<br>
			<br>




			<s:iterator value="buyItemHistoryList">


				<div class="box">

					<div class="image">


						<img src="<s:property value='image_file_path'/>" alt="Photo"
							width="200" height="200">


					</div>


					<div class="moji">


						<!--   <br><s:property value="user_id"/>-->

						<br><s:property value="product_name" />

						<s:property value="product_namekana" />
						<br>
						<s:property value="price" />
						円 <br>
						<s:property value="product_count" />
						個 <br>
						<s:property value="release_company" />
						販売店 <br>
						<s:property value="regist_date" />




					</div>
				</div>


			</s:iterator>




		<s:form action="BuyItemHistoryAction">




			<input type="hidden" name="deleteFlg" value="1">

				<div class="botton">

				<s:submit value="削除" method="delete"/>

				</div>

		</s:form>

		</s:elseif>




	<div class="message">

			<s:if test="message != null">

				<h3><s:property value="message"/></h3>

			</s:if>

	</div>






	</div>

<jsp:include page="footer.jsp" />


</body>

</html>
