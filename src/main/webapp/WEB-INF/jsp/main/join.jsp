<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="<c:url value='/resources/home/css/join.css' />">
	<!-- 메인콘텐츠영역 -->
	<div id="container">
		<!-- 메인상단위치표시영역 -->
		<div class="location_area customer">
			<div class="box_inner">
				<h2 class="tit_page">스프링 <span class="in">in</span> 자바</h2>
				<p class="location">고객센터 <span class="path">/</span> 회원가입</p>
				<ul class="page_menu clear">
					<li><a href="#" class="on">회원가입</a></li>
				</ul>
			</div>
		</div>	
		<!-- //메인상단위치표시영역 -->

		<!-- 메인본문영역 -->
		<div class="bodytext_area box_inner">
			<!-- 폼영역 -->
			<form method="POST" name="join_form" action="<c:url value= '/tiles/join.do' />" class="appForm">
				<fieldset>
					<legend>회원가입폼</legend>
					<p class="info_pilsoo pilsoo_item">필수입력</p>
					<ul class="app_list">
						<li class="clear">
							<label for="EMPLYR_LBL" class="tit_lbl pilsoo_item">아이디</label>
							<div class="app_content"><input type="text" name="EMPLYR_ID" class="w100p" id="EMPLYR_ID" placeholder="아이디를 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="password_lbl" class="tit_lbl pilsoo_item">비밀번호</label>
							<div class="app_content"><input type="password" name="PASSWORD" class="w100p" id="password_lbl" placeholder="비밀번호를 입력해주세요" required/></div>
						</li>
							<li class="clear">
							<label for="password_chk_lbl" class="tit_lbl pilsoo_item">비밀번호확인</label>
							<div class="app_content"><input type="password" name="PASSWORD_CHK" class="w100p" id="password_chk_lbl" placeholder="비밀번로를 다시 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="password_hint_lbl" class="tit_lbl pilsoo_item">암호힌트</label>
							<div class="app_content"><input type="text" name="PASSWORD_HINT_LBL" class="w100p" id="password_hint" placeholder="암호힌트를 입력해주세요" required/></div>
						</li>
							<li class="clear">
							<label for="password_cnsr_lbl" class="tit_lbl pilsoo_item">암호힌트답변</label>
							<div class="app_content"><input type="text" name="NAME" class="w100p" id="password_cncr_lbl" placeholder="암호힌트답변을 입력해 주세요" required/></div>
						</li>
							<li class="clear">
							<label for="name_lbl" class="tit_lbl pilsoo_item">이름</label>
							<div class="app_content"><input type="text" name="NAME" class="w100p" id="name_lbl" placeholder="이름을 입력해주세요" required/></div>
						</li>
							<li class="clear">
							<label for="sexdstn_code_lbl" class="tit_lbl pilsoo_item">성별</label>
							<div class="app_content radio_area">
								<input value="M" type="radio" name="SEXDSTN_CODE" class="css-radio" id="man_lbl" checked="" />
								<label for="man_lbl">남</label>
								<input value="F" type="radio" name="SEXDSTN_CODE" class="css-radio" id="woman_lbl" />
								<label for="woman_lbl">여</label>
							</div>
						</li>
						<li class="clear">
							<label for="email_lbl" class="tit_lbl pilsoo_item">이메일</label>
							<div class="app_content"><input type="email" name="EMAIL"" class="w100p" id="email_lbl" placeholder="이메일을 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="tel_lbl" class="tit_lbl pilsoo_item">연락처</label>
							<div class="app_content"><input type="digits"" name="TEL" class="w100p" id="tel_lbl" placeholder="휴대폰'-'없이 숫자만 입력해주세요" required/></div>
						</li>
							<li class="clear">
							<label for="house_adres_lbl" class="tit_lbl pilsoo_item">집주소</label>
							<div class="app_content"><input type="text" name="HOUSE_ADRES" class="w100p" id="house_adres_lbl" placeholder="집주소를 입력해주세요" required/></div>
						</li>
						<li class="clear">
							<label for="agree_lbl" class="tit_lbl pilsoo_item">개인정보활용동의</label>
							<div class="app_content checkbox_area"><input type="checkbox"" name="AGREE" class="css-checkbox" id="agree_lbl" required checked/>
							<label for="agree_lbl" class="agree">동의함</label>
							</div>
						</li>
					</ul>
					<p class="btn_line">
					* 회원가입 후 관리자가 승인한 이후 이용이 가능합니다.
					</p>
					<p class="btn_line">
					<button disabled style="opacity: 0.5" id="btn_insert" type="submit" class="btn_baseColor">회원가입</button>
					</p>	
				</fieldset>
				<input type="hidden" name="ORGNZT_ID" value="ORGNZT_000000000000">
				<input type="hidden" name="EMPLYR_STTUS_CODE" value="S">
				<input type="hidden" name="GROUP_ID" value="GROUP_99" >
				<input type="hidden" name="ESNTL_ID" value="">
			</form>
			<!-- //폼영역 -->
		</div>
		<!-- //메인본문영역 -->
	</div>
	<!-- //메이콘텐츠영역 -->
	 <script>
$(document).ready(function(){
	//EMPYR_ID 중복체크 이후 submit버튼을 disabled를 false로 활성화 시키면 전송이 가능 Ajax
	//blur조건 focus의 반대말. 
	$("#EMPLYR_ID").bind("blur", function(){
		var emplyr_id $(this).val();
		if(emply_id == '') {
			alert('아이디값은 필수 입력 입니다.');
			$("#btn_insert").css("opacity","0.5");
			$("#btn_insert").attr("disabled",true);
			return false;
		}
		$.ajax({
			url:"<c:url value='/' />idcheck.do?emplyr_id="+emplyr_id,//@ResponseBody사용하는 클래스의 메서드 매핑URL값
			type:"get",//jsp에서 컨트롤러로 보내는 방식 
			dataType:"text",//ajax결과를 컨트롤러에서 받는 방식
			success:function(reulst){
				if(result=="0") {//중복id가 있으면
					alret("사용가능한 ID입니다.");
					$("#btn_insert").attr("disabled", false); //서브밋버튼 활성화
					$("#btn_insert").css("opacity","1.0");
				}else{//중복id가 없으면
					alert("중복 ID가 존재합니다..");
					$("#btn_insert").attr("disabled", true); //서브밋버튼 활성화
					$("#btn_insert").css("opacity","0.5");
				}
			},
			error:function(result){
				alert("RestAPI서버에 문제가 있습니다.");
			}
		});
		
	});
});
</script>