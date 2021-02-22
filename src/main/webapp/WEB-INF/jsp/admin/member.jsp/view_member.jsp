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
                <h3 class="card-title">UPDATE Member</h3>
              </div>
              <!-- /.card-header -->
         
                <div class="card-body">
                  <div class="form-group">
                    <label for="EMPLYR_ID">EMPLYR_ID</label>
                    <input value="${memberVO.EMPLYR_ID}" type="text" class="form-control" name="EMPLYR_ID" id="EMPLYR_ID" placeholder="ID를 입력해 주세요." required readonly>
                  </div>
                  <div class="form-group">
                    <label for="PASSWORD">PASSWORD</label>
                    <input type="password" class="form-control" name="PASSWORD" id="PASSWORD" placeholder="암호를 입력해주세요" required>
                  </div>
                  <div class="form-group">
                    <label for="PASSWORD_HINT">PASSWORD_HINT</label>
                    <input value="${memberVO.PASSWORD_HINT}" type="text" class="form-control" name="PASSWORD_HINT" id="PASSWORD_HINT" placeholder="암호힌트를 입력해주세요" required>
                  </div>
                    <div class="form-group">
                    <label for="PASSWORD_CNCR">PASSWORD_CNCR</label>
                    <input value="${memberVO.PASSWORD_CNCR}" type="text" class="form-control" name="PASSWORD_CNCR" id="PASSWORD_CNCR" placeholder="암호힌트 답변을 입력해주세요" required>
                  </div>
                  <div class="form-group">
                  <label for="USER_NM">USER_NM</label>
                  <input value="${memberVO.USER_NM}" type="text" class="form-control" name="USER_NM" id="USER_NM"  placeholder="암호를 입력해주세요" >
                  </div>
                    <div class="form-group">
                  <label for="SEXDSTN_CODE">SEXDSTN_CODE</label>
                  <select class="form-control" name="SEXDSTN_CODE" id="SEXDSTN_CODE">
                  	<option value="M" <c:out value="${(memberVO.SEXDSTN_CODE=='M')?'selected':''}" />> 남자</option>
                  	<option value="F" <c:out value="${(memberVO.SEXDSTN_CODE=='F')?'selected':''}" />>여자</option>
                  </select>
                  <div class="form group">
                  <label for="EAML_ADRES">EAML_ADRES</label>
                  <input value="${memberVO.EAML_ADRES}" type="email" class="form-control" name="EAML_ADRES" id="EAML_ADRES" placeholder="이메일을 입력해 주세요" required>
                  
                  </div>
                  <div class="form group">
                  <label for="HOUSE_ADRES">HOUSE_ADRES</label>
                  <input value="${memberVO.HOUSE_ADRES}" type="text" class="form-control" name="HOUSE_ADRES" id="HOUSE_ADRES" placeholder="집주소를 입력해 주세요" required>
                  </div>
                  <div class="form group">
                  <label for="ORGNZT_ID">ORGNZT_ID</label>
                  <input value="${memberVO.ORGNZT_ID}"type="text" class="form-control" name="ORGNZT_ID" id="ORGNZT_ID" placeholder="소속기관을 입력해 주세요" required>
                  </div>
                  <div class="form-group">
                  <label for="EMPLYR_STTUS_CODE">EMPLYR_STTUS_CODE</label>
                <select class="form-control" name="EMPLYR_STTUS_CODE" id="EMPLYR_STTUS_CODE">
	                  	<c:forEach items="${codeMap}" var="sub">
	                  		<option value="${sub.value.CODE}" <c:out value="${(memberVO.EMPLYR_STTUS_CODE==sub.value.CODE)?'selected':''}" />>${sub.value.CODE_NM}</option>
	                  	</c:forEach>
                  	</select>
                  </div>
                      <div class="form-group">
                  <label for="GROUP_ID">GROUP_ID</label>
                  <select class="form-control" name="GROUP_ID" id="GROUP_ID">
                  	<c:forEach items="${codeGroup}" var="">
                  		${sub.value.GROUP_NM}<br>
                  		<option value="${sub.value.GROUP_ID}" <c:out value="${($memberVO.GROUP_ID==sub.value.GROUP_ID)?'selected':''}" /> >${sub.value.GROUP.NM}" </option>
                  	</c:forEach>
                  </select>
                  </div>
                  <div class="form group">
                  <label for="ESNTL_ID">ESNTL_ID</label>
                  <input value="${memberVO.ESNTL_ID}"type="text" class="form-control" name="ESNTL_ID" id="ESNTL_ID" placeholder="게시판관리고유ID를 입력해 주세요" required readonly>
                  </div>
                </div>
                <!-- /.card-body -->

             
 
            </div>
              <!-- /.버튼영역시작 -->
      
  			    <!-- 버튼영역 -->
  		       <div class="card-body">
           	   <a href="<c:url value='/admin/member/list_member.do?page=${pageVO.page}&search_type=${pageVO.search_type}&search_keyword=${pageVO.search_keyword}'/>" class="btn btn-primary float-right mr-1">목록</a>
       	       <button type="submit" class="btn btn-info float-right mr-1 ">수정</button>
       	       <button id="btn_delete" type="button" class="btn btn-danger float-right mr-1">삭제</button>
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
	$("#btn_delete").on("click",function(){
		if(confirm("정말로 삭제 하시겠습니까?")) {
			var delete_form = $("form[name='write_form']");
			delete_form.attr("action","<c:url vlaue='/admin/member/delete_mamber.do' />");
			delete_form.submit();
		}
	});
});
</script>