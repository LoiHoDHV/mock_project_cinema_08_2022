<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<h1>Thêm mới phim</h1>
<div class="row justify-content-center">
	<div class="col-6">
		<form:form class="form-floating" modelAttribute="uploadFilmwithImage"
			method="POST" action="" enctype="multipart/form-data">

			<div class="form-floating row">
				<form:input type="text" path="name" class="form-control" id="nameid"
					placeholder="Con khỉ đột biến" />
				<label for="nameid">Tên Phim</label>
			</div>
			<div class="form-floating row">
				<form:input type="text" path="actors" class="form-control"
					id="actorsid" placeholder="Tom Hank" />
				<label for="actorsid">Diễn viên </label>
			</div>
			<div class="form-floating row">
				<form:input type="text" path="producer" class="form-control"
					id="producerid" placeholder="Marvel" />
				<label for="producerid">Nhà sản xuất </label>
			</div>
			<div class="form-floating row">
				<form:input type="text" path="duration" class="form-control"
					id="durationid" placeholder="3" />
				<label for="durationid">Thời lượng</label>
			</div>
			<div class="form-floating row">
				<form:input type="textarea" path="description" class="form-control"
					id="descriptionid" placeholder="3" />
				<label for="descriptionid">Miêu tả</label>
			</div>
			<%-- <div class="form-floating">
		<form:input type="text" path="duration" class="form-control"
			id="durationid" placeholder="3" />
		<label for="durationid">Thể loại</label>
	</div> --%>
			<!-- <select class="form-select" aria-label="Default select example">
		<option selected>Open this select menu</option>
		<option value="1">One</option>
		<option value="2">Two</option>
		<option value="3">Three</option>
	</select> -->
			<!--  for Poster upload -->
			<div class="form-group row">
				<label for="fileDatasid" class="form-label"> Poster phim </label>
				<form:input path="fileDatas" class="form-control" type="file"
					id="fileDatasid" />

			</div>

			<button type="submit" class="btn btn-primary">Tạo mới</button>
		</form:form>
	</div>
</div>