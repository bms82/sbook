<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>    
          <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Read Page
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
	                        	<div class="form-group">
	                        		<label>게시물 번호</label> <input class="form-control" type="text" name="bno" value="<c:out value='${board.bno }'/>" readonly="readonly">
	                        	</div>
	                        	<div class="form-group">
	                        		<label>Title</label> <input class="form-control" type="text" name="title" value="<c:out value='${board.title }'/>" readonly="readonly">
	                        	</div>
	                        	<div class="form-group">
	                        		<label>Text area</label> <textarea class="form-control" name="content" rows="3" readonly="readonly"><c:out value='${board.content }'/> </textarea>
	                        	</div>
	                        	<div class="form-group">
	                        		<label>Writer</label> <input class="form-control" type="text" name="writer" value="<c:out value='${board.writer}'/>" readonly="readonly">
	                        	</div>
	                        	<button class="btn btn-default" data-oper="modify" onclick="location.href='/board/modify?bno=<c:out value="${board.bno }"/>'">Modify</button>
	                        	<button class="btn btn-default" data-oper="list" onclick="location.href='/board/list'">List</button>
						<form action="/board/modify" method="get" id="operForm">
							<input type="hidden" id="bno" name="bno" value="<c:out value='${board.bno }'/>">
							<input type="hidden" name="pageNum" value="<c:out value='${cri.pageNum }'/>">					
							<input type="hidden" name="amount" value="<c:out value='${cri.amount }'/>">					
						</form>
						</div>
						<!--  end panel body -->
					</div>
					<!--  end panel body -->
				</div>
				<!--  end panel -->
				</div>
				<!--  end row -->
				<script type="text/javascript">
				$(document).ready(function () {
					
					var operForm = $("#operForm");
					
					$("button[data-oper='modify']").on("click", function(e) {
						
						operForm.attr("action", "/board/modify").submit();
					});
					
					$("button[data-oper='list']").on("click", function(e) {
						
						operForm.find("#bno").remove();
						operForm.attr("action", "/board/list");
						operForm.submit();
						
					})
					
				});
				
				
				</script>
				
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>    