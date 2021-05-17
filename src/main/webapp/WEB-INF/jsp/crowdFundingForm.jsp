<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<title>펀딩 등록 화면</title>
</head>
<body>
<br><h1 align="center">펀딩 아이템 등록하기</h1><br>
<div class="container">
	<div class="row-lg-10">
		<form action="#" th:action="@{}" th:object="${crowdFundingItem}" method="post" enctype="multipart/form-data">
		  <div class="row-lg-10">
            <div class="form-group">
				<p>
			        <label for="title" th:text="#{title}">제목</label>:<br>
			        <input type="text" id="title" th:field="*{title}" />
	    		</p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
            		<label for="img" th:text="#{img}">대표 이미지</label>:<br>
				    <input type="file" id="img" th:field="*{img}" placeholder="파일 선택">
				</p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
				카테고리: <select class="form-select form-select-sm" th:field="*{category}">
  							<option th:each="category : ${categories}"
  								th:value="${category}"
  								th:text="">카테고리</option>
							</select>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
			        <label for="name" th:text="#{name}">창작자 이름</label>:<br>
			        <input type="text" id="name" th:field="*{name}" />
	    		</p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
			        <label for="shortInfo" th:text="#{shortInfo}">프로젝트 요약</label>:<br>
			        <textarea id="shortInfo" rows="3" th:field="*{shortInfo}"></textarea>
	    		</p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
			        <label for="detailInfo" th:text="#{detailInfo}">프로젝트 상세내용</label>:<br>
			        <textarea id="detailInfo" rows="20" th:field="*{detailInfo}"></textarea>
	    		</p>
            </div>
		  </div>
		  <hr>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
			        <label for="targetAmount" th:text="#{targetAmount}">목표 금액</label>:<br>
			        <input type="text" id="targetAmount" th:field="*{targetAmount}" />
	    		</p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
                <p>
			        <label for="startDate" th:text="#{startDate}">펀딩 시작일</label>:<br>
			        <input type="date" id="startDate" th:field="*{startDate}" />
	    		</p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
                <p>
			        <label for="closingDate" th:text="#{closingDate}">펀딩 종료일</label>:<br>
			        <input type="date" id="closingDate" th:field="*{closingDate}" />
	    		</p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
			        <label for="productComposition" th:text="#{productComposition}">상품 구성</label>:<br>
			        <textarea id="productComposition" rows="3" th:field="*{productComposition}"></textarea>
	    		</p>
            </div>
		  </div>
		  <hr>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
			        <label for="email" th:text="#{email}">이메일</label>:<br>
			        <input type="text" id="email" th:field="*{email}" />
			    </p>
            </div>
		  </div>
		  <div class="row-lg-10">
            <div class="form-group">
            	<p>
			        <label for="account" th:text="#{account}">입금 계좌</label>:<br>
			        <input type="text" id="account" th:field="*{account}" />
			    </p>
            </div>
		  </div>
		  <br>
		  <div class="row-lg-10">
		  	<div class="form-group">
		  		<input type="submit" class="btn btn-primary btn-lg" value="등록 요청하기" th:value="#{}">
            </div>
		  </div>
		</form>
	</div>						
</div>
</body>
</html>