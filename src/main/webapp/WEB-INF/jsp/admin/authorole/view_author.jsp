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
            <h1 class="m-0">권한수정</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">권한수정</li>
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
              <form name="write_form" action="<c:url value='/admin/authorrole/update_authorole.do' />" method="post">
              
			<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">UPDATE Member</h3>
              </div>
              <!-- /.card-header -->
         
                <div class="card-body">
                  <div class="form-group">
                    <label for="ROLE_PTTRN">ROLE_PTTRN</label>
                    <input value="${result.ROLE_PTTRN}" type="text" class="form-control" name="ROLE_PTTRN" id="ROLE_PTTRN" placeholder="화면URL" required>
                  </div>
                   <div class="form-group">
                  <label for="AUTHOR_CODE">AUTHOR_CODE</label>
                  <select class="form-control" name="AUTHOR_CODE" id="AUTHOR_CODE">
                  	<c:forEach items="${codeGroup}" var="">
                  		${sub.value.GROUP_NM}<br>
                  		<option value="${sub.value.group_nm}" <c:out value="${(result.AUTHOR_CODE==sub.value.group.nm)? 'selected':''} " /> >${sub.value.group.nm eq}</option>
                  	</c:forEach>
                  </select>
                  </div>
                  <div class="form-group">
                    <label for="AUTHORROLE_DC">AUTHORROLE_DC</label>
                    <input value="${resulst.AUTHORROLE_DC}" type="text" class="form-control" name="AUTHORROLE_DC" id="AUTHORROLE_DC" placeholder="권한설명" required>
                  </div>
                    <div class="form-group">
                    <label for="SORT_ORDR">SORT_ORDR</label>
                    <input value="${result.SORT_ORDR}" type="text" class="form-control" name="SORT_ORDR" id="SORT_ORDR" placeholder="권한적용순서" required>
                  </div>
                    <div class="form-group">
                    <label for="SORT_ORDR">SORT_ORDR</label>
                    <div class="form-check">
		                 <input class="form-check-input" type="radio" id="USE_AT" name="USE_AT" value="Y" <c:out value="${(result.USE_AT eq 'Y' )?'checked':''}"/>checked>
		                 <label class="form-check-label" for="USE_Y">사용 </label>
					  <span style="display:inline-block;width:20px;"></span>
					  <input class="form-check-input" type="radio" id="USER_N" name="USE_AT" value="N" <c:out value="${(result.USE_AT eq 'N')?'ckecked':'' }"/> checked>
		                 <label class="form-check-label" for="USER_N">미사용 </label>
		               </div>
		              </div>
                <!-- /.card-body -->

             
 
            </div>
              <!-- /.버튼영역시작 -->
      
  			    <!-- 버튼영역 -->
  		       <div class="card-body">
           	   <a href="<c:url value='/admin/authorrole/list_author.do?page=${pageVO.page}&search_type=${pageVO.search_type}&search_keyword=${pageVO.search_keyword}'/>" class="btn btn-primary float-right mr-1">목록</a>
       	       <button type="submit" class="btn btn-info float-right mr-1 ">수정</button>
       	       <button id="btn_delete" type="button" class="btn btn-danger float-right mr-1">삭제</button>
       	       <!-- 부트스트랩 디자인 버튼클래스를 이용해서 a태그를 버튼모양 만들기(위) -->
       	       <!-- btn클래스명이 버튼모양으로 변경, btn-primary클래스명은 버튼색상을 변경하는 역할 -->
        	            </div>
          <!-- 버튼영역 끝 -->
          <input type="hidden" name="AUTHORROLE_ID" value="${result.AUTHORROLE_ID}" />
          <input type="hidden" name="page" value="${pageVO.page}" />
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
		alert("준비중 입니다.");
		return false;
		if(confirm("정말로 삭제 하시겠습니까?")) {
			var delete_form = $("form[name='write_form']");
			delete_form.attr("action","<c:url vlaue='/admin/authorrole/delete_author.do' />");
			delete_form.submit();
		}
	});
});
</script>