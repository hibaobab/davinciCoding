<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>

<script type="text/javascript">

	function memberInsertFnc() {
		var emailVal = document.getElementById('email');
		var nicknameVal = document.getElementById('nickName');
		var passwordVal = document.getElementById('password');
		var passwordChkVal = document.getElementById('passwordChk');
		var addFormObj = document.getElementById("addForm");
		
		if (emailVal.value == '') {
			alert("이메일을 입력하세요!");
			emailVal.focus();
			
			return;
			}
			else if (nicknameVal.value == '') {
			alert("닉네임을 입력하세요!");
			nicknameVal.focus();
			
			return;
		
			}
			else if (passwordVal.value == '') {
			alert('비밀번호를 입력하세요!');
			passwordVal.focus();
			
			return;
			}
			else if (passwordChkVal.value == '') {
			alert('비밀번호 확인을 입력하세요!');
			passwordChkVal.focus();
			
			return;
			}
			else if (passwordVal.value != passwordChkVal.value) {
			alert('비밀번호가 틀립니다.\n다시 확인하세요!!');
			
			return;
			}else{
				
				addFormObj.submit();
			}
	}
	
	function pageLoginFormFnc(){
		location.href = "../auth/login.do"
	}
</script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/headerTitle.jsp" />
	<jsp:include page="/WEB-INF/views/headerButtons.jsp" />
	<jsp:include page="/WEB-INF/views/memberCss.jsp" />


	<br/>
	<div id="member">
		<form action="./addCtr.do" id="addForm"method="post" style="font-weight: bold;"
			enctype="multipart/form-data">
			
			<div style="text-align: left; padding-left: 70px;">
				이메일<br/> 
				<input type="text" id="email" name="email" placeholder="이메일 확인"><br/>
				<br/>
				
				닉네임<br/>
				<input type="text" id="nickName" name='nickName' placeholder="닉네임 확인"><br/>
				<br/>
				
				비밀번호<br/>
				<input type="password" id="password" name='password' placeholder="비밀번호 확인"><br/>
				<br/>
				
				비밀번호 확인 <br/>
				<input type="password" id="passwordChk" name="passwordChk" placeholder="비밀번호 재확인"><br/>
			</div>
			<br/>
			<input type="button" class="memberInput" onclick="memberInsertFnc();" value="회원가입"><br/>
			<br/>
			<input type="button" class="memberInput" onclick="pageLoginFormFnc()" value="가입취소">
		</form>
	</div>
	<br/>
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>

</body>
</html>