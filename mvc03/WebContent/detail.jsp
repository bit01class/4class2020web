<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="/template/head.jspf" %>
<style type="text/css">
	#content{}
	#content>h2{
		text-align: center;
	}
	#content>form{
		width: 500px;
		margin: 0px auto;
	}
	#content>form>div>input{
		border-width:0px;
	}
	#content>form>div>label{
		width: 200px;
		display: inline-block;
	}
	#content>form>div{
		text-align: center;
	}
	#content>form>div:first-child~div{
		border-top:1px dotted gray;
	}
</style>
<script type="text/javascript">

	$(function(){
		$('#dname,#loc').prop('readonly',true);
		$('form').one('submit',function(){ 
			$('#dname,#loc').prop('readonly',false);
			$('form').find('input').css('border-width','2px');
			$('form').find('button').eq(1).text('취소');
			$('form').off('reset',del);
			$('#content h2').text('수정페이지');
			return false;
		});
		$('form').on('reset',del);
	});
	function del(){
		alert('delete');
		return false;
	}
</script>
</head>
<body>
<%@ include file="template/header.jspf" %>
<%@ include file="./template/menu.jspf" %>
	<h2>상세페이지</h2>
	<form method="post">
		<div>
			<label for="deptno">deptno</label>
			<input type="text" name="deptno" id="deptno" value="${bean.deptno }" readonly />
		</div>
		<div>
			<label for="dname">dname</label>
			<input type="text" name="dname" id="dname" value="${bean.dname }" />
		</div>
		<div>
			<label for="loc">loc</label>
			<input type="text" name="loc" id="loc" value="${bean.loc }" />
		</div>
		<div>
			<button type="submit">수정</button>
			<button type="reset">삭제</button>
			<button type="button">뒤로</button>
		</div>
	</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>








