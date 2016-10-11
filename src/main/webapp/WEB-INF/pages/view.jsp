<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script src="/js/jquery-3.1.1.min.js"></script>
</head>
<body>
	<h1>Massive</h1>

	<form>
		<input type="number" name="number">
		<input type="submit" onclick="javascript:postNum(); return false;">
	</form>

	<p>
		Response: <span class="results"></span>
	</p>

	<script>
		function postNum() {
			$.ajax({
				type : "POST",
				url : "parseNum",
				data : $('FORM').serialize(),

				success : function(data) {
					$('.results').append(data);
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					$('.results').append('B');
				}
			});
		}
	</script>
</body>
</html>