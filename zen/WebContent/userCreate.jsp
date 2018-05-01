
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type"content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content=""/>
<title> UserCreate画面</title>

<style type="text/css">

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

.qqq{
	width: 505px;
    margin: auto;
    font-size: 20px;
    padding: 0.25em 0.5em;
    background: transparent;
    border-left: solid 10px #f48fb1;
}

 
.heading{
font-size:18px;/*フォントの大きさ*/
border: 1px solid #ccc;/*したのボーダー*/
border-top: 2px solid #16a765;/*上のボーダー*/
margin-bottom: 15px;
padding:8px 15px;
}


#top{
width:780px;
margin:30px auto;
border:1px solid #333;
}

#header{
width: 100%;
height: 80px;
background-color:black;
}

#main{
width:100%;
height:500px;
text-align: center;
}
#footer{
width:100%;
height:80px;
background-color:black;
clear:both;
}

table{
border-collapse: collapse;
border-spacing:0;
border: 1px solid #cbcbcb;
width: 100%;
box-sizing: border-box;
}

table td, table th{
border-left:1px solid #cbcbcb;
border-bottom:1px solid #cbcbcb;
font-size: 13px;
margin: 0;
padding: 10px 13px;
}
table th{
background-color:#f5f5f5;
color:#000;
text-align:left;
white-space:nowrap;
}
#pr{
color:red;
}


</style>
</head>
<body>

<s:form action="UserCreateConfirmAction">
  
 <h2 class="heading">お客様情報入力画面</h2>
 
<h4><span style="color:red"><s:property value="message" /></span></h4>
<br>
<table class="table">
<tr>

<th>姓</th>
<td>
  <s:textfield size="40" id="family_name" class="form" name="family_name" placeholder="1-16文字"  value='%{#session.family_name}'/> 
<div id="pr">
<s:iterator value="errorFamily_nameList">
<s:property /><br>
</s:iterator></div>

           </td>
           </tr>
           
           <tr>
<th>名</th>
<td>
<s:textfield size="40" id="first_name" class="form" name="first_name" placeholder="1-16文字" value='%{#session.first_name}'/>
<div id="pr"><s:iterator value="errorFamily_name_kanaList">
<s:property /><br>
</s:iterator></div>
           </td>

</tr>

<tr>
<th>姓ふりがな</th>
<td>
<s:textfield size="40" id="family_name_kana" class="form" name="family_name_kana" placeholder="ひらがな 1-16文字"  value='%{#session.family_name_kana}'/>
<div id="pr">
<s:iterator value="errorFirst_nameList">
<s:property /><br>
</s:iterator></div></td>
</tr>

<tr>
<th>名ふりがな</th>
<td>
<s:textfield size="40" id="first_name_kana" class="form" name="first_name_kana" placeholder="ひらがな 1-16文字"  value='%{#session.first_name_kana}'/><br>
<div id="pr">
<s:iterator value="errorFirst_name_kanaList">
<s:property /><br>
</s:iterator></div></td>
</tr>

<tr>
<th>性別</th>
<td>
<s:if test='sex=="男"'>
<input type="radio" type="hidden" id="sex" class="form" checked name="sex" value="男"/>男
<input type="radio" type="hidden" id="sex" class="form" name="sex" value="女"/>女
</s:if>
<s:if test='sex=="女"'>
<input type="radio"type="hidden" id="sex" class="form" checked name="sex" value="男"/>男
<input type="radio"type="hidden" id="sex" class="form" checked name="sex" value="女"/>女
</s:if>
<s:if test='sex==null'>
<input type="radio"type="hidden" id="sex" class="form" checked name="sex" value="男"/>男
<input type="radio"type="hidden" id="sex" class="form" name="sex" value="女"/>女
</s:if>

</td>
</tr>

<tr>
<th>メールアドレス</th>
<td>
<s:textfield size="40" id="email" class="form" name="email" placeholder="半角英数字 半角記号 14文字32-文字" value='%{#session.email}'/><br>
<div id="pr">
<s:iterator value="errorEmailList">
<s:property /><br>
</s:iterator></div></td>
</tr>

<tr>
<th>ログインID</th>
<td>
<s:textfield size="40" id="loginUserId" class="form" name="loginUserId" placeholder="半角英数字 1-8文字" value='%{#session.loginUserId}'/><br>
<div id="pr">
<s:iterator value="errorUser_idList">
<s:property /><br>
</s:iterator></div></td>
</tr>

<tr>
<th>ログインPASS</th>
<td>
<s:password size="40" name="password" placeholder="半角英数字 1-16文字"  value='%{password}'/><br>
<div id="pr">
<s:iterator value="errorPasswordList">
<s:property /><br>
</s:iterator></div></td>
</tr>

</table>

<s:submit value="登録情報を確認"/>

</s:form>

前画面に戻る場合は
<s:url id="editUrl" action="GoLoginAction">
<s:param name="family_name" value="%{family_name}"/>
<s:param name="first_name" value="%{first_name}"/>
<s:param name="family_name_kana" value="%{famly_name_kana}"/>
<s:param name="first_name_kana" value="%{first_name_kana}"/>
<s:param name="sex" value="%{sex}"/>
<s:param name="email" value="%{email}"/>
<s:param name="loginUserId" value="%{loginUserId}"/>
<s:param name="password" value="%{password}"/>
</s:url>
<s:a href="%{editUrl}" >こちら</s:a>




</body>
</html>