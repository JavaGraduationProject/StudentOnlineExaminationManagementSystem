<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>�������ҳ��</title>
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
		background-color: #EEF2FB;
	}
	#manageSubject table  td{
		font-size:12px;
	}
	-->
	</style>
	<link href="images/skin.css" rel="stylesheet" type="text/css">
  </head>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">��������</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="53%" valign="top">&nbsp;</td>
        </tr>
      <tr>
        <td valign="middle"><span class="left_txt">
			<div id="manageSubject" align="center"><!--��������-->
			<table width="95%" cellspacing="10">
				  <tr align="center">
					<td>������</td>
					<td>�������</td>
					<td>��ȷ��</td>
					<td>�鿴����</td>
					<td>��������</td>
					<td>ɾ������</td>
				  </tr>
				  <s:iterator value="#request.subjects" var="subject">
				  	 <tr align="center">
							<td>${subject.subjectID}</td>
							<td align="left">${subject.subjectTitle}</td>
							<td>${subject.subjectAnswer}</td>
							<td><a href="subjectParticular.action?subjectID=${subject.subjectID}">�鿴</a></td>
							<td><a href="subjectUpadateBefore.action?subjectID=${subject.subjectID}">����</a></td>
							<td><a href="subjectDelete?subjectID=${subject.subjectID}">ɾ��</a></td>
					  </tr>
				  </s:iterator>	
				  <tr>
				  	<td colspan="6" align="center">
				  		��${page.totalCount}����¼����ǰ��${page.currentPage}/${page.totalPage}ҳ��ÿҳ${page.everyPage}����¼
				  	<s:if test="#request.page.hasPrePage">
                		<a href="subjectQuery.action?currentPage=1">��ҳ</a> | 
                		<a href="subjectQuery.action?currentPage=${page.currentPage - 1}">��һҳ</a> | 
               		</s:if>
               		<s:else>
               		��ҳ | ��һҳ | 
               		</s:else>
               		<s:if test="#request.page.hasNextPage">
                		<a href="subjectQuery.action?currentPage=${page.currentPage + 1}">��һҳ</a> | 
                		<a href="subjectQuery.action?currentPage=${page.totalPage}">βҳ</a>
               		</s:if>
               		<s:else>
               		��һҳ | βҳ
               		</s:else>
				  	</td>
				  </tr>	  
			</table>	
			</div>
		</td>
        </tr>
      
    </table></td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>
</table>
</body>
</html>
