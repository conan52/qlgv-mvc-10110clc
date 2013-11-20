<%@page import="org.apache.taglibs.standard.tag.common.core.ForEachSupport"%>
<%@page import="com.nvh.giangvien.model.BangDanhGia"%>
<%@page import="org.springframework.ui.Model,java.util.List"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<script>
function comeback(){
	window.location.assign("${pageContext.request.contextPath}/admin/qluserlist");
}
</script>
<div class="content">
	<div class="site-map-path">
		<a href="${pageContext.request.contextPath}/admin"><img
			src="${pageContext.request.contextPath}/resources/images/home.png"
			height="18" width="18" border="0px" /></a> <label> Trang Chủ ></label> <a
			class="focus" href="${pageContext.request.contextPath}/admin/qluserlist">Quản lý Users</a> &gt; <a class="focus"
			href="${pageContext.request.contextPath}/admin/user/${info.id}">Thông tin User</a>
		<hr class="line-header-padding" />
	</div>
	<div id="public" style="position: relative; height: 200px">
			<img style="border : 1px solid black ;position: absolute; top : 10px ; right: 30px ;width: 140px ; height : 160px ;" alt="anh sinh vien" src="http://online.hcmute.edu.vn/HinhSV/${info.id}.jpg">
		<div style="width: 400px; position: absolute; ; top : 10px ; left: 10px">
			<div id="row" style="width: 400px;"><b>ID :</b> ${info.id}</div>
			<div id="row" style="width: 400px;"><b>Họ Tên</b> : ${info.hoten}</div>
			<div id="row" style="width: 400px;"><b>Nơi Sinh</b> : ${info.noisinh}</div>
			<div id="row" style="width: 400px;"><b>Ngày Sinh</b> : ${info.ngaysinh}</div>
			<div id="row" style="width: 400px;"><b>Loại account</b> 
			<c:choose>
				<c:when test="${info.typeaccount == 0}"> : Sinh Viên</c:when>
				<c:when test="${info.typeaccount == 1}"> : Giảng Viên</c:when>
				<c:when test="${info.typeaccount == 2}"> : Manager</c:when>
				<c:when test="${info.typeaccount == 3}"> : Admin</c:when> 
			</c:choose>
			</div>
		</div>
		<div id="row" align="right" style="position: absolute; bottom: 10;"><input id="button" type="button" value="Cập nhật" /> <input id="button" type="button" value="Trở về" onclick="comeback()"></div>
	</div>
</div>