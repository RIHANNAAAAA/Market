<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<link href="${path}/css/bootstrap.min.css" rel="stylesheet">
<%-- <%@ include file="../viewConfiguration.jsp"%> --%>

<!-- <style>
.edit1 {
    color: #fff;
    background-color: #0a58ca;
    border-style : none;

    padding:  5px 50px 3px 50px;
    font-size: 14px;
    border-radius: 15px;
}

.edit1:hover {
    color: #fff;
    background-color: #2a389a;
}
</style> -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$('.edit1').click(function() {
			var id  = $(this).attr('id');  // rno
			var txt = $('#td_'+id).text(); // replytext
			$('#td_'+id).html("<textarea rows='3' cols='30' id='tt_"+id+"'>"+txt
				+"</textarea>");
			$('#btn_'+id).html(
			   "<input type='button' class='btn btn-success'  value='확인' onclick='up("+id+")'> "
			  +"<input type='button' class='btn btn-outline-success' value='취소' onclick='lst()'>");
		});
	});
	function up(id) {
		var replytext = $('#tt_'+id).val();
		var formData = "rno="+id+'&replytext='+replytext
			+"&bno=${board.num}";
		$.post('${path}/repUpdate',formData, function(data) {
			$('#slist').html(data);
		});
	}
	function lst() {
		$('#slist').load('${path}/slist/num/${board.num}');
	}
	function del(rno,bno) {
		var formData="rno="+rno+"&bno="+bno;
		$.post("${path}/repDelete",formData, function(data) {
			$('#slist').html(data);
		});
	}
</script>
</head>
<body>
	<div class="container" align="center">
		<h2 class="text-primary">댓글</h2>
		<table class="table">
			<tr>
				<td width=70>작성자</td>
				<td>내용</td>
				<td width=100>수정일</td>
				<td></td>
			</tr>
			<c:forEach var="rb" items="${slist}">
				<tr>
					<td>${rb.replyer}</td>
					<td id="td_${rb.rno}">${rb.replytext}</td>
					<td>${rb.updatedate }</td>
					<td id="btn_${rb.rno}">
						<c:if test="${rb.replyer==board.writer }">
							<input type="button" value="수정"  class="edit1 btn btn-success" id="${rb.rno}">
							<input type="button" class="btn btn-outline-success" value="삭제"	onclick="del(${rb.rno},${rb.bno})">
						</c:if></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>