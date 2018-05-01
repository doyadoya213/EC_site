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
    <link rel="stylesheet" type="text/css" href="./css/payment.css">

     <style>
@import url('https://fonts.googleapis.com/css?family=Noto+Serif');
</style>

		<title>決済画面</title>

</head>
<body>

		<div id="main">
				<div id="top">
						<p>購入予定商品と宛先情報選択</p>
				</div>

				<div>
				<s:form action="PaymentConfirmAction" onsubmit="return radioCheck()">
				<s:property value="errorCartList" />
				<s:iterator value="cartList">
						<table>
								<tr>
										<td>
												<img src="<s:property value='image_file_path'/>" width="250" height="200">
										</td>
								</tr>
								<tr>
										<td>
												<span>商品名</span>
										</td>
										<td>
												<s:property value="product_name"/><br>
										</td>
								</tr>

								<tr>
										<td>
												<span>ふりがな</span>
										</td>
										<td>
												<s:property value="product_name_kana"/><br>
										</td>
								</tr>

								<tr>
										<td>
												<span>値段</span>
										</td>
										<td>
												<s:property value="price"/><span>円</span>
										</td>
								</tr>

								<tr>
										<td>
												<span>販売会社</span>
										</td>
										<td>
												<s:property value="release_company"/><span>円</span>
										</td>
								</tr>

								<tr>
										<td>
												<span>購入個数</span>
										</td>
										<td>
												<s:property value="product_count"/><span>個</span>
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
										<td><s:property value="session.total_price" />円</td>
								</tr>

								<br>
								<br>

                                     <!-------- 宛先情報選択 -------->
								<tr>
									<td>
										<span>宛先選択</span>
								<table>
								<tr>
								<tr>
								<td>
								<s:if test="addressList == null">
									<span>宛先情報はありません。登録してください。</span>
								</s:if>
								</td>
								</tr>
								<tr>
								<td>
								<s:elseif test="message == null">
									<span>ご希望の宛先を選択してください。</span>
								</s:elseif>
								</td>
								</tr>
								<tr>
								<s:iterator value="#session.addressList">
								<td>
									<input type="radio" name="id" checked="checked" value="${id}">
								</td>
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

								</s:iterator>
								</tr>
								<tr>

								</tr>

						       </table>
									<s:submit value="購入"/><br>
									<td><span>※何もお選び頂いていない状態で購入ボタンをクリックをするとホーム画面へ移動します。</span></td>
					</s:form>

								<div>
									<p>カートに戻る場合は<a href='<s:url action="CartAction"/>'>こちら</a></p>
									<p>	お届け先入力へ<a href='<s:url action="DestinationAddAction"/>'>こちら</a></p>

								</div>
				</div>
		</div>
		<div id="footer">
			<div id="pr">
			</div>
		</div>

</body>
</html>