<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp %>

  <!-- 대시보드 본문 Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- 본문헤더 Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">${brdMstrVO.bbsNm}게시글수정</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">${brdMstrVO.bbsNm}게시글등록</li>
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
              <form name="update_form" action="<c:url value='/admin/board/update_board.do0' />" method="post" encType="mulipart/form-data">
              
			<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">UPDATE Board</h3>
              </div>
              <!-- /.card-header -->
         
                <div class="card-body">
                  <div class="form-group">
                   <label for="nttSj">title</label>
                    <input value="${result.nttSj}" type="text" class="form-control" name="nttSj" id="nttSj" placeholder="제목을 입력해 주세요." required>
                     </div>
                  <div class="form-group">
                 <label for="nttCn">Content</label>
                  	<textarea rows="5" name="nttCn" id="nttCn" class="form-control">${result.nttCn}</textarea>
                  </div>
                  <div class="form group">
                      	<label for="frstRegisterNm">writer</label>
                  	<input value="${result.frstRegisterNm}" type="text" class="form-control" name="frstRegisterNm" id="frstRegisterNm" placeholder="작성자를 입력해 주세요" required>
                  	                  </div>
                  <div class="form-group" style="margin-bottom:0px;">
                  <label>attach</label>
                  </div>
           		  <div class="custom-file">
                  	<c:if test="${not empty result.atchFileId}">
		                <hr>
		                <strong><i class="far fa-save mr-1"></i> 첨부파일</strong>
		                <p class="text-muted">
		                <c:import url="/cmm/fms/selectFileInfs.do" charEncoding="utf-8">
		                    <c:param name="param_atchFileId" value="${result.atchFileId}" />
		                </c:import>
		                </p>
	                </c:if>
                  <input type="file" name="file" class="custom-file-input" id="customFile">
                  <label class="custom-file-label" for="customFile" style="color:#999;">파일첨부</label>
                    </div>
                </div>
                <!-- /.card-body -->

             
 
            </div>
              <!-- /.버튼영역시작 -->
      
  			    <!-- 버튼영역 -->
  		       <div class="card-body">
           	   <button id="btn_list" type="button" class="btn btn-primary float-right mr-1">목록</a>
       	       <button id="btn_view" type="button" class="btn btn-danger float-right mr-1 ">이전</button>
               <button type="submit" class="btn btn-danger float-right mr-1 ">수정</button>
       	       <!-- 부트스트랩 디자인 버튼클래스를 이용해서 a태그를 버튼모양 만들기(위) -->
       	       <!-- btn클래스명이 버튼모양으로 변경, btn-primary클래스명은 버튼색상을 변경하는 역할 -->
        	            </div>
          <!-- 버튼영역 끝 -->
			<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>"/>
			<input type="hidden" name="returnUrl" value="<c:url value='/cop/bbs/forUpdateBoardArticle.do'/>"/>
			<input type="hidden" name="bbsId" value="<c:out value='${result.bbsId}'/>" />
			<input type="hidden" name="nttId" value="<c:out value='${result.nttId}'/>" />
			<input type="hidden" name="bbsAttrbCode" value="<c:out value='${bdMstr.bbsAttrbCode}'/>" />
			<input type="hidden" name="bbsTyCode" value="<c:out value='${bdMstr.bbsTyCode}'/>" />
			<input type="hidden" name="replyPosblAt" value="<c:out value='${bdMstr.replyPosblAt}'/>" />		
			<input type="hidden" name="fileAtchPosblAt" value="<c:out value='${bdMstr.fileAtchPosblAt}'/>" />
			<input type="hidden" name="posblAtchFileNumber" value="<c:out value='${bdMstr.posblAtchFileNumber}'/>" />
			<input type="hidden" name="posblAtchFileSize" value="<c:out value='${bdMstr.posblAtchFileSize}'/>" />
			<input type="hidden" name="tmplatId" value="<c:out value='${bdMstr.tmplatId}'/>" />
			<input type="hidden" name="ntcrNm" value="dummy">   <!-- validator 처리를 위해 지정 -->
			<input type="hidden" name="password" value="dummy"> <!-- validator 처리를 위해 지정 -->
			<input name="ntceBgnde" type="hidden" value="10000101">
  		    <input name="ntceEndde" type="hidden" value="99991231">
			<input type="hidden" name="fileSn" value="0">
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
<!-- 첨부파일 부트스트랩 디자인 JS -->
<script src= "<c:url value= '/'/>/resources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- 첨부파일 선택한 내용 출력 실행 -->
<script>
$(document).ready(function () {
  bsCustomFileInput.init();
});
</script>

<script>
$(document).ready(function(){
	var update_form = $("form[name='update_form']");
	$("#btn_list").on("click",function(){
		//alert("목록가기!");
		update_form.attr("action","<c:url value='/admin/board/list_board.do'>");
		update_form.submit();
	});
	$("#btn_view").on("click",function(){
		//alert("이전화면가기");
		update_form.attr("action","<c:url value='/admin/board/view_board.do'>");
		update_form.submit();
	});
});
</script>
<script>
$(document).ready(function(){
	$('#nttCn').summernote({
		height:150,
		lang:"ko-KR",
		placeholder:'글 내용을 입력해 주세요',
		toolbar: [
				    ['fontname', ['fontname']],
				    ['fontsize', ['fontsize']],
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    ['color', ['forecolor','color']],
				    ['table', ['table']],
				    ['para', ['ul', 'ol', 'paragraph']],
				    ['height', ['height']],
				    ['insert',['link','video']],//'picture',
				    ['view', ['fullscreen', 'help']]
				],
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	});
});//textarea 중 content아이디영역을 섬머노트에디터로 변경처리 함수실행
</script>
