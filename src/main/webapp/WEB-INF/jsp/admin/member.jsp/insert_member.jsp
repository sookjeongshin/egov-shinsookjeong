<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>


  <!-- 대시보드 본문 Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- 본문헤더 Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">회원상세보기</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">회원등록</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
     
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <!-- 본문내용 -->
    
    <!-- 본문내용 Main content -->
    <section class="content">
      <div class="container-fluid">
    
   	   <div class="row">
          <div class="col-12"><!-- 부트스트랩의 디자인 클래스 row -->
    		 <!-- form start -->
              <form name="write_form" action="<c:url value='/admin/member/update_member.do' />" method="post">
              
			<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">INSERT Member</h3>
              </div>
              <!-- /.card-header -->
         
                <div class="card-body">
                  <div class="form-group">
                    <label for="EMPLYR_ID">EMPLYR_ID</label>
                    <input value="" type="text" class="form-control" name="EMPLYR_ID" id="EMPLYR_ID" placeholder="ID를 입력해 주세요." required readonly>
                  </div>
                  <div class="form-group">
                    <label for="PASSWORD">PASSWORD</label>
                    <input type="password" class="form-control" name="PASSWORD" id="PASSWORD" placeholder="암호를 입력해주세요" required>
                  </div>
                  <div class="form-group">
                    <label for="PASSWORD_HINT">PASSWORD_HINT</label>
                    <input value="" type="text" class="form-control" name="PASSWORD_HINT" id="PASSWORD_HINT" placeholder="암호힌트를 입력해주세요" required>
                  </div>
                    <div class="form-group">
                    <label for="PASSWORD_CNCR">PASSWORD_CNCR</label>
                    <input value="" type="text" class="form-control" name="PASSWORD_CNCR" id="PASSWORD_CNCR" placeholder="암호힌트 답변을 입력해주세요" required>
                  </div>
                  <div class="form-group">
                  <label for="USER_NM">USER_NM</label>
                  <input value="" type="text" class="form-control" name="USER_NM" id="USER_NM"  placeholder="암호를 입력해주세요" >
                  </div>
                    <div class="form-group">
                  <label for="SEXDSTN_CODE">SEXDSTN_CODE</label>
                  <select class="form-control" name="SEXDSTN_CODE" id="SEXDSTN_CODE">
                  	<option value="M" <c:out value="" />> 남자</option>
                  	<option value="F" <c:out value="" />>여자</option>
                  </select>
                  <div class="form group">
                  <label for="EAML_ADRES">EAML_ADRES</label>
                  <input value="" type="email" class="form-control" name="EAML_ADRES" id="EAML_ADRES" placeholder="이메일을 입력해 주세요" required>
                  
                  </div>
                  <div class="form group">
                  <label for="HOUSE_ADRES">HOUSE_ADRES</label>
                  <input type="text" class="form-control" name="HOUSE_ADRES" id="HOUSE_ADRES" placeholder="집주소를 입력해 주세요" required>
                  </div>
                  <div class="form group">
                  <label for="ORGNZT_ID">ORGNZT_ID</label>
                  <input value="ORGNZT_0000000000000" type="text" class="form-control" name="ORGNZT_ID" id="ORGNZT_ID" placeholder="소속기관을 입력해 주세요" required readonly>
                  </div>
                  <div class="form-group">
                  <label for="EMPLYR_STTUS_CODE">EMPLYR_STTUS_CODE</label>
                <select class="form-control" name="EMPLYR_STTUS_CODE" id="EMPLYR_STTUS_CODE">
	                  	<c:forEach items="${codeMap}" var="sub">
	                  		<option value="${sub.value.CODE}" >${sub.value.CODE_NM}</option>
	                  	</c:forEach>
                  	</select>
                  </div>
                      <div class="form-group">
                  <label for="GROUP_ID">GROUP_ID</label>
                  <select class="form-control" name="GROUP_ID" id="GROUP_ID">
                  	<c:forEach items="${codeGroup}" var="">
                  		${sub.value.GROUP_NM}<br>
                  		<option value="${sub.value.GROUP.ID}">${sub.value.GROUP.NM}" </option>
                  	</c:forEach>
                  </select>
                  </div>
                  <div class="form group">
                  <label for="ESNTL_ID">ESNTL_ID</label>
                  <input type="hidden" class="form-control" name="ESNTL_ID" id="ESNTL_ID" placeholder="게시판관리고유ID를 입력해 주세요" required readonly>
                  </div>
                </div>
                <!-- /.card-body -->

             
 
            </div>
              <!-- /.버튼영역시작 -->
      
  			    <!-- 버튼영역 -->
  		       <div class="card-body">
           	   <a href="<c:url value='/admin/member/list_member.do'/>" class="btn btn-primary float-right mr-1">목록</a>
       	       <button id="insert_btn" type="submit" class="btn btn-info float-right mr-1 " disabled>수정</button>
       	       <!-- 부트스트랩 디자인 버튼클래스를 이용해서 a태그를 버튼모양 만들기(위) -->
       	       <!-- btn클래스명이 버튼모양으로 변경, btn-primary클래스명은 버튼색상을 변경하는 역할 -->
        	            </div>
          <!-- 버튼영역 끝 -->
          
          </form>
          <!-- 폼내부에 버튼이 있어야지만, 전송버튼이 작동 됩니다. -->
          
          </div>
        </div>
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
<%@ include file="../include/footer.jsp" %>
<script>
$(document).ready(function(){
	//EMPYR_ID 중복체크 이후 submit버튼을 disabled를 false로 활성화 시키면 전송이 가능 Ajax
	//blur조건 focus의 반대말. 
	$("#EMPLYR_ID").bind("blur", function(){
		var emplyr_id $(this).val();
		$.ajax({
			url:"<c:url value='/' />idcheck.do?emplyr_id="+emplyr_id,//@ResponseBody사용하는 클래스의 메서드 매핑URL값
			type:"get",//jsp에서 컨트롤러로 보내는 방식 
			dataType:"text",//ajax결과를 컨트롤러에서 받는 방식
			success:function(reulst){
				if(result=="0") {//중복id가 있으면
					alret("사용가능한 ID입니다.");
					$("#btn_insert").attr("disabled", false); //서브밋버튼 활성화
				}else{//중복id가 없으면
					alert("중복 ID가 존재합니다..");
					$("#btn_insert").attr("disabled", true); //서브밋버튼 활성화
				}
			},
			error:function(result){
				alert(result+ "RestAPI서버에 문제가 있습니다.");
			}
		});
		
	});
});
</script>