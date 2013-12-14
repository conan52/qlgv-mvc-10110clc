<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<style>
.ui-pg-div {
	width: 50px !important;
}
input.text,select {
	margin-bottom: 12px;
	width: 95%;
	padding: .4em;
}

fieldset {
	padding: 0;
	border: 0;
	margin-top: 10px;
}

.ui-dialog .ui-state-error {
	padding: .3em;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}
</style>
<div class="content">
	<div class="site-map-path">
		<a href="${pageContext.request.contextPath}/admin"><img
			src="${pageContext.request.contextPath}/resources/images/home.png"
			height="18" width="18" border="0px" /></a> <label class="focus"> Trang Chủ </label> 
		<hr class="line-header-padding" />
	</div>
	<c:forEach items="${tblist}" var="tb">
		<div id="public" style="width: 600px">
			<div id="row">
				<u>Thông báo :</u> ${tb.id}
			</div>
			<div id="row">
				<b>Nội dung :</b> ${tb.tenthongbao}
			</div>
			<div id="row">
				<b>Ngày đăng thông báo :</b> ${tb.ngaytao}
			</div>
		</div>
	</c:forEach>
</div>