<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��ʾ�����</title>
<link href="student/images/css2.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
<!--
.STYLE3 {font-size: 18px; }
.STYLE4 {font-size: 18px; font-weight: bold; }
.STYLE5 {color: #FF0000}
-->
</style>
</head>

<body>
<table width="1003" height="485" border="0" cellpadding="0" cellspacing="0" class="centerbg">
  <tr>
    <td width="149" height="485">&nbsp;</td>
    <td width="741" valign="top" class="rightbian">
	<table width="98%" border="0" align="center" cellpadding="0" cellspacing="10">
      <tr>
        <td><div align="center" class="STYLE3">����ʱ�䣺120 ����</div></td>
        <td><div align="center" class="STYLE3">������${sessionScope.studentInfo.studentName}</div></td>
        <td><div align="center" class="STYLE3">�ܷ� ��100 ��</div></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3" bgcolor="#999999" class="STYLE4">ѡ����(ÿС��5�֣���20��)</td>
      </tr>
	  <!--��Ŀ��ʼ-->
	  <s:iterator value="#request.subjects" var="subject" status="sta">
      <tr>
        <td colspan="3"><strong>��<span class="STYLE5">${sta.index + 1}</span>��&nbsp;${subject.subjectTitle}</strong>		</td>
      </tr>
      <tr>
        <td colspan="3"><strong>A��</strong>${subject.subjectOptionA}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>B��</strong>${subject.subjectOptionB}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>C��</strong>${subject.subjectOptionC}</td>
      </tr>
      <tr>
        <td colspan="3"><strong>D��</strong>${subject.subjectOptionD}</td>
      </tr>
      <tr>
        <td height="32" colspan="3" bgcolor="#CCCCCC">
		<strong>����ȷ�𰸡���${subject.subjectAnswer}</strong><br/>
        <strong>���ο���������${subject.subjectParse}</strong></tr>
      </s:iterator>  
	   <!--��Ŀ����-->
    </table></td>
    <td width="113">&nbsp;</td>
  </tr>
</table>
</body>
</html>
