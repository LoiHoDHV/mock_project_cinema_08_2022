<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<!-- ============================================================== -->
<!-- Start Page Content -->
<!-- ============================================================== -->
<div class="row">
	<!-- column -->
	<div class="col-sm-12">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Dnah sách phim hiện có trong dữ
					liệu</h4>
				<div class="table-responsive">
					<table class="table user-table no-wrap text-center">
						<thead>
							<tr>
								<th class="border-top-0">#</th>
								<th class="border-top-0">Tên phim</th>
								<th class="border-top-0">Diên viên</th>
								<th class="border-top-0">Nhà sản xuất</th>
								<th class="border-top-0">Thời lượng(đơn vị: giờ))</th>
								<th class="border-top-0">Poster</th>
								<th class="border-top-0">Thời gian tạo</th>
								<th class="border-top-0"><i class=" fas fa-cogs"></i></th>
								<th class="border-top-0"><i class="fas fa-trash"></i></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="film" items="${listFilm}">
								<tr >
									<td>${film.id }</td>
									<td>${film.name }</td>
									<td>${film.actors }</td>
									<td>${film.producer }</td>
									<td>${film.duration }</td>
									<td>${film.imagepath}</td>
									<td>${film.created_at}</td>
									<td><a class="btn btn-primary" href="#" role="button">Sửa</a></td>
									<td><a class="btn btn-primary" href="#" role="button">Xóa</a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					<a class = "btn btn-primary btn-lg" href="${pageContext.request.contextPath}/admin/film/create">Thêm mới phim</a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ============================================================== -->
<!-- End PAge Content -->
<!-- ============================================================== -->