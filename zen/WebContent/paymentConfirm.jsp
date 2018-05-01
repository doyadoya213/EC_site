<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="Content-Style-Type" content="text/css"/>
		<meta http-equiv="Content-Script-Type" content="text/javascript"/>
		<meta http-equiv="imagetoolbar" content="no"/>
		<meta name="description" content=""/>
		<meta name="keywords" content=""/>

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

		<title>決済確認画面</title>
		<style type="text/css">
		/* ======TAG LAYOUT====== */

			 body{
			 	margin:0;
			 	padding:0;
			 	line-height:1.6;
			 	letter-spacing:1px;
			 	font-family:Verdana,Helvetica,sans-serif;
			 	font-size:12px;
			 	color:#333;
			 	background:#fff;
			 }

			 table{
			 		text-align:center;
			 		margin:0 auto;
			 }
		/* ======ID LAYOUT====== */

			#top{
			 width:780px;
			 margin:30px auto;
			 border:1px solid #333;
			}

			#header{
			 width:100%;
			 height:80px;
			 background-color:black;
			}

			#main{
			 width:100%;
			 height:100%;
			 text-align:center;
			}

			#footer{
					width:100%;
					height:80px;
					background-color:black;
					clear:both;
			}
	</style>
	<script type="text/javascript">
			function submitAction(url){
				$('form').attr('action',url);
				$('form').attr();
			}
	</script>



</head>
<body>
		<div id="header">
				<div id="pr">
				</div>
		</div>
		<div id="main">
				<div id="top">
						<p>購入商品・宛先確認画面</p>
				</div>
				<div>
			<s:form action="PaymentCompleteAction">
				<s:hidden name="userId" value="%{user_id}"/>
				<s:iterator value="cartList">
						<table>
								<tr>
										<td>
												<img src="<s:property value='image_file_path'/>" width="250" height="200"><s:hidden name="image_file_path" value="%{image_file_path}"/><br>
										</td>
								</tr>
								<tr>
										<td>
												<span>商品名</span>
										</td>
										<td>
												<s:property value="product_name"/><s:hidden name="productName" value="%{product_name}"/><br>
										</td>
								</tr>

								<tr>
										<td>
												<span>ふりがな</span>
										</td>
										<td>
												<s:property value="product_name_kana"/><s:hidden name="product_name_kana" value="%{product_name_kana}"/><br>
										</td>
								</tr>

								<tr>
										<td>
												<span>販売会社</span>
										</td>
										<td>
												<s:property value="release_company"/><s:hidden name="release_company" value="%{release_company}"/><br>
										</td>
								</tr>

								<tr>
										<td>
												<span>値段</span>
										</td>
										<td>
												<s:property value="price"/><s:hidden name="price" value="%{price}"/><span>円</span>
										</td>
								</tr>

								<tr>
										<td>
												<span>購入個数</span>
										</td>
										<td>
												<s:property value="product_count"/><s:hidden name="productCount" value="%{product_count}"/><span>個</span>
										</td>
								</tr>

								<tr>
										<td>
												<span>商品ごとの合計金額</span>
										</td>
										<td><s:property value="product_total_price" />円</td>
								</tr>

								</table>
								</s:iterator>
								<br>
								<tr>
										<td>
												<span>お客様の合計金額</span>
										</td>
										<td><s:property value="#session.total_price" />円</td>
								</tr>

								<br>
								<br>

				<!-- 選択した宛先 -->

									<td>
										<span>お届けする住所</span>
									</td>

								<s:iterator value="#session.selectAddList">
								<table>
								<tr>
								<td>
										<span>お名前</span>
								</td>
								<td>
								<s:property value="family_name"/><s:property value="first_name"/>
								</td>
								</tr>

								<tr>
								<td>
										<span>ふりがな</span>
								</td>
								<td>
								<s:property value="family_name_kana"/><s:property value="first_name_kana"/>
								</td>
								</tr>

								<tr>
								<td>
										<span>メールアドレス</span>
								</td>
								<td>
								<s:property value="email"/>
								</td>
								</tr>

								<tr>
								<td>
										<span>電話番号</span>
								</td>
								<td>
								<s:property value="tel_number"/>
								</td>
								</tr>

								<tr>
								<td>
										<span>住所</span>
								</td>
								<td>
								<s:property value="user_address"/>
								</td>
								</tr>
								</table>
								</s:iterator>

								<s:submit value="決定"/>

						</s:form>

								<div>
									<p>	決済確認画面に戻る場合は<a href='<s:url action="PaymentAction"/>'>こちら</a></p>
								</div>
				</div>
		</div>
		<div id="footer">
				<div id="pr">
				</div>
		</div>


</body>
</html>