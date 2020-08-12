<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<style type="text/css">
	div{
		width: 100px;
		height: 100px;
		background-color: gray;
	}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	$(function () {
		//$.get('api','msg=abcd');
		$('#fileupload').change(function(){
			var formData=new FormData();
			formData.append('msg','ABCD');
			$('#fileupload').each(function(){
				console.log(this.files[0]);
				formData.append('img',this.files[0]);
				$('div').html(this.files[0].name);
			});
			//var xhr=new XMLHttpRequest();
			//xhr.open('post','api',true);
			//xhr.send(formData);
			
			$.ajax('api',{
				type : 'post',
			 	data : formData,
			 	enctype:'multipart/form-data',
				cache : false,
			 	contentType: false,
			 	processData: false,	
				error : function(jqXHR, textStatus, errorThrown) {		
				},
				'success':function(){
					alert("ok");
				}
			});
			//dragenter : 드래그 요소가 특정 영역에 들어갔을 경우 호출
			//dragleave : 드래그 요소가 특정 영역에서 벗어났을 경우 호출
			//dragover : 드래그 요소가 특정 영역에 있을 경우 호출
			//drop : 드래그 요소가 드롭되었을 경우 호출
			//var files = e.originalEvent.dataTransfer.files;
		});
	});
	
	</script>
</head>
<body>
	<h2>Hello World!</h2>
	<input name="files" id="fileupload" type="file" />
	<div></div>
</body>
</html>
