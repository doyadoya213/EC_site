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
<title>UserCreateConfirm画面</title>

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

table{
text-align:center;
margin:0 auto;
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


#top{
width:780px;
margin:30px auto;
}


    </style>
</head>
<body>
     <div id="header">
          <div id="pr">
          </div>
</div>
<div id="main">
          <div id="top">
              <p>UserCreateConfirm</p>
</div>
<div>
<h3>登録する内容は以下でよろしいですか。</h3>
<table>
<s:form action="UserCreateCompleteAction">
<tr id="box">

<th>姓</th>

<td>
<s:property value="#session.family_name" escape="false"/>
<input type="hidden" name="family_name" value='<s:property value="family_name"/>'>
</td>
</tr>

<tr id="box">

<th>名</th>

<td>
<s:property value="#session.first_name" escape="false"/>
<input type="hidden" name="first_name" value='<s:property value="first_name"/>'>
</td>
</tr>

<tr id="box">

<th>姓ふりがな</th>

<td>
<s:property value="#session.family_name_kana" escape="false"/>
<input type="hidden" name="family_name_kana" value='<s:property value="family_name_kana"/>'>
</td>
</tr>

<tr id="box">

<th>名ふりがな</th>

<td>
<s:property value="#session.first_name_kana" escape="false"/>
<input type="hidden" name="first_name_kana" value='<s:property value="first_name_kana"/>'>
</td>
</tr>

<tr id="box">

<th>性別</th>

<td>
<s:property value="#session.sex" escape="false"/>
<input type="hidden" name="sex" value='<s:property value="sex"/>'>
</td>
</tr>

<tr id="box">

<th>メールアドレス</th>

<td>
<s:property value="#session.email" escape="false"/>
<input type="hidden" name="email" value='<s:property value="email"/>'>
</td>
</tr>

<tr id="box">

<th>ログインID:</th>

<td>
<s:property value="#session.loginUserId" escape="false"/>
<input type="hidden" name="loginUserId" value='<s:property value="loginUserId"/>'>
</td>
</tr>

<tr id="box">

<th>ログインPASS:</th>

<td>
<s:property value="#session.password" escape="false"/>
</td>
</tr>

<tr>
<td>
<s:submit value="ファイナルアンサー？"/>
</td>
</tr>
</s:form>
</table>

<s:url id="editUrl" action="UserCreateAction">
<s:param name="family_name" value="%{family_name}"/>
<s:param name="first_name" value="%{first_name}"/>
<s:param name="family_name_kana" value="%{famly_name_kana}"/>
<s:param name="first_name_kana" value="%{first_name_kana}"/>
<s:param name="sex" value="%{sex}"/>
<s:param name="email" value="%{email}"/>
<s:param name="loginUserId" value="%{loginUserId}"/>
<s:param name="password" value="%{password}"/>
</s:url>
<s:a href="%{editUrl}" >戻る</s:a>









</div>
</div>

<div id="footer">
<div id="pr">
</div>
</div>


</body>
</html>