<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<%@ include file="/WEB-INF/views/includes/header.jsp" %>    
          <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Register</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Register
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        	<form role="form" action="/board/register" method="post">
	                        	<div class="form-group">
	                        		<label>Title</label> <input class="form-control" type="text" name="title">
	                        	</div>
	                        	<div class="form-group">
	                        		<label>Text area</label> <textarea class="form-control" name="content" rows="3"> </textarea>
	                        	</div>
	                        	<div class="form-group">
	                        		<label>Writer</label> <input class="form-control" type="text" name="writer">
	                        	</div>
	                        	<button class="btn btn-default" type="submit">Submit Button</button>
	                        	<button class="btn btn-default" type="reset">Reset Button</button>
                        	</form>
						</div>
						<!--  end panel body -->
					</div>
					<!--  end panel body -->
				</div>
				<!--  end panel -->
				</div>
				<!--  end row -->
<%@ include file="/WEB-INF/views/includes/footer.jsp" %>    