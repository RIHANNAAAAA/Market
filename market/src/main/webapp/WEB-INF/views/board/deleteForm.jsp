<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../viewConfiguration.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.passwd.value != frm.passwd2.value) {
			alert("암호가 다릅니다. 수정후 작업하세요");
			frm.passwd.focus();
			return false;
		}
	}
</script>
</head>
<body>
<%@ include file="../header.jsp"%>
<%@ include file="../menuShop.jsp"%>
	<div class="container" align=center>
		<div class="market-center">
		<h2 class="text-primary">게시글 삭제</h2>
		<form action="${path}/delete" name="frm" onsubmit="return chk()" method="post">
			<input type="hidden" name="pageNum" value="${pageNum}"> 
			<input type="hidden" name="passwd" value="${board.passwd}"> 
			<input type="hidden" name="num" value="${board.num}">
			<table class="table">
				<tr>
					<td>암호</td>
					<td><input type="password" name="passwd2" required="required"></td>
				</tr>
				<tr>
				<td colspan="2" align=center><input type="submit" value="확인" class="btn btn-success"></td>
				</tr>
			</table>
		</form>
		</div>
	</div><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="../footer.jsp"%>
</body>
</html>