<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class="p-5 bg-primary text-white">
	<!-- container: 좌우 가운데 정렬 -->
	    <div class="container">
	    	<!-- display-3 : 큰 글자중에 보통 크기 -->
	        <h1 class="display-3">상품 등록</h1>
	    </div>
	</div>
	
	<div class="container">
    <!-- 여기에 넣을 내용을 post (쓸거다.) -->
	    <form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
	        <div class="form-grout row mt-3">
	            <label class="col-sm-2">상품 이름</label>
	            <div class="col-sm-3">
	                <input type="text" name="name" class="form-control">
	            </div>
	        </div>
	
	        <div class="form-grout row mt-3">
	            <label class="col-sm-2">상품설명</label>
	            <div class="col-sm-3">
	                <input type="text" name="description" class="form-control">
	            </div>
	        </div>
	
	        <div class="form-grout row mt-3">
	            <label class="col-sm-2">가격</label>
	            <div class="col-sm-3">
	                <input type="text" name="price" class="form-control">
	            </div>
	        </div>
	        
	        <div class="form-group row">
			    <div class="col-sm-offset-2 col-sm-10">
			        <input type="submit" class="btn btn-primary" value="등록">
			    </div>
			</div>
	
	    </form>
	</div>
	
	
	<jsp:include page="footer.jsp"/>
</body>
</html>