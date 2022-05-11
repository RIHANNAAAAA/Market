<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header 영역 -->	
	<div class="header">
		<table width=100%>
			<tr>
				<td valign="middle" align="right" style="font-size: 13px">
					<a href="${path }/insertForm">SHOP매니저</a> | 
					<a href="${path }/updateForm/num/1/pageNum/1">마이페이지</a> | 
					<a href="${path }/view/num/1/pageNum/1">관리자페이지</a> | 로그인
					<!--  SHOP매니저 | 입점신청 | 회원가입 | 로그인 | 마이페이지| 장바구니 | 로그아웃 | 관리자페이지  | 이벤트/공지 | 고객센터 --></td>
			</tr>
			<tr>
				<td>
					<a href="${path }/list"><img src="${path}/images/logo7.PNG" width=150px></a></td>
			</tr>
			<tr>
				<td>
					<div class="header_menu">
						<div style="width: 15%;"><a href="#" style="font-size:15px;">카테고리</a></div>
						<div style="width: 15%;"><a href="#" style="font-size:15px;">신상품</a></div>
						<div style="width: 15%;"><a href="#" style="font-size:15px;">베스트</a></div>
						<div style="width: 15%;"><a href="#" style="font-size:15px;">이벤트</a></div>
						<div style="width: 250px">
							<input type=text style="border-style:solid; border-color: black; border-radius:10px; 
									background-color: #ddd; height: 25px; width:180px; padding: 2 5 2 5" >
							<img src="${path }/images/icon_search.png" style="height:25px; width:25px;">
									</div>
						<div style="width: 50px"><a href="#" style="font-size:15px;"><img src="${path }/images/free-icon-font-shopping-cart-3916598.svg" style="height:25px"></a></div>
					</div>	
				
				</td>
			</tr>
		</table>

	</div>