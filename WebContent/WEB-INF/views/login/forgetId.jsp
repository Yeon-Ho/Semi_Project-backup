<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!-- header -->
<c:import url="/WEB-INF/views/login/header.jsp"></c:import>

<script type="text/javascript">
$(document).ready(function(){
	
	//이메일 인증번호 받기
	$("#emailVerify").click(function(){
		console.log("emailVerify")
	});
	//인증번호 입력
	$("#verifyCode").click(function(){
		console.log("verifyCode")
	});
});
</script>

<div style="width: 500px; margin:0 auto; height: 700px;">
<h1>아이디 찾기</h1>
<hr>

<form action="/emailverify" method="POST">
	<div class="form-group">
    	<label >이름</label>
    	<input type="text" name="name" class="form-control" required="required">
	</div>  
	<div class="form-group">
		<label>이메일</label><br>
		<input type="email" name="email" class="form-control" required="required" style="width: 325px; display:inline-block; margin-right: 20px;"/>
		<button type="button" id="emailVerify" class="form-control" style="width: 150px; display:inline-block; background-color:#ccc;">이메일 인증받기</button>
	</div>
	
	<div class="form-group">
		<label>인증번호 입력</label><br>
		<input type="text" name="verifyCode" id="verifyCode" class="form-control"  required="required"  placeholder="인증번호를 입력하세요" style="width: 325px; display:inline-block; margin-right: 20px;"/>
		<button class="form-control" style="width: 150px; display:inline-block; background-color:#ccc;">확인</button>
	</div>
</form>

<!-- 아이디 조회 (AJAX)  -->
<div style="width: 150px; height: 80px; color:red;"><h4>아이디 출력 위치 (AJAX 구현)</h4></div>
<hr>
<a href="/login"><button class="btn btn-primary btn-lg btn-block">로그인하러 가기</button></a>
<hr>

<div style="text-align: center;">
<a href="/forgetpw">비밀번호찾기</a>
</div>
</div>

<!-- footer css  -->
<style type="text/css">
.footer {padding: 25px 0; text-align: center;}
.footer ul {margin-bottom: 20px;}
.footer li {position: relative; display: inline; padding: 0 7px 0 10px;}
.footer li:before {content: ''; width: 1px; height: 12px; background: #ccc; position: absolute; left: 0; top: 2px;}
.footer li:first-child:before {width: 0; height: 0;}
.footer .w3c {margin-top: 15px;}
</style>

<c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
</html>