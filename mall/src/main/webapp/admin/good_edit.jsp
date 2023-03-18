<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>商品编辑</title>
<meta charset="utf-8" />
<link rel="stylesheet" href="/admin/css/bootstrap.css" />
</head>
<body>
<div class="container">

	<br><br>
	<form class="form-horizontal" action="/goods/goodEdit" method="post" enctype="multipart/form-data" onsubmit="return check()">
		<input type="hidden" name="id" value="${goods.id}"/>
		<input type="hidden" name="cover" value="${goods.cover}"/>
        <input type="hidden" name="page" value="${page}"/>
		<div class="form-group">
			<label for="input_file" class="col-sm-1 control-label">封面</label> 
			<div class="col-sm-6"><img src="${goods.cover}" width="100"/>
				<input type="file" name="multipartFile" id="input_file" style="display:inline;"> ( 推荐尺寸: 500 * 500 )
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">名称</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="name" value="${goods.name}" required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">介绍</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="intro" value="${goods.intro}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">规格</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="spec" value="${goods.spec}">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">价格</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="price" value="${goods.price}" onkeyup="this.value=this.value.replace(/[^\d]+/g,'')">
			</div>
		</div>
		<div class="form-group">
			<label for="input_name" class="col-sm-1 control-label">库存</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="stock" value="${goods.stock}" onkeyup="this.value=this.value.replace(/[^\d]+/g,'')">
			</div>
		</div>
		<div class="form-group">
			<label for="select_topic" class="col-sm-1 control-label">类目</label>
			<div class="col-sm-6">
				<select class="form-control" id="select_topic" name="type_id">
                    <C:forEach items="${types}" var="type">
                        <option value="${type.id}" <C:if test="${type.id==goods.type_id}">selected</C:if>>${type.name}</option>
                    </C:forEach>
				</select>
			</div>
		</div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">售卖</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="sales" value="${goods.sales}" onkeyup="this.value=this.value.replace(/[^\d]+/g,'')">
            </div>
        </div>
		<div class="form-group">
			<label for="select_topic" class="col-sm-1 control-label">详情</label>
			<div class="col-sm-6">
				<textarea id="editor" name="content" style="width:800px;height:600px;">${goods.content}</textarea>
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-1 col-sm-10">
				<button type="submit" class="btn btn-success">提交修改</button>
			</div>
		</div>
	</form>
</div>

<script charset="utf-8" src="../editor/kindeditor-all.js"></script>
<script charset="utf-8" src="../editor/lang/zh-CN.js"></script>
<script charset="utf-8" src="../editor/editor.js"></script>
</body>
</html>