<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	Object obj = request.getAttribute("idCheck");
	Object objId = request.getAttribute("id");
	String id = "";
	boolean idCheck = false;
	if(objId!=null){
	id = (String) objId;}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ���� ��</title>
<style type="text/css">
body {
	text-align: center;
}

form {
	background-color: lightgray;
	display: inline-block;
	text-align: center;
	border: 1px solid black;
}

table {
	display: inline-block;
	width: 380px;
}

th {
	width: 100;
	background-color: gray;
}

td {
	width: 200;
	text-align: left;
}

td.center {
	text-align: center;
}
</style>
<script type="text/javascript">
	var check = 0;
<%Object obj1 = request.getAttribute("idCheck");
			if (obj1 != null) {
				boolean result = (Boolean) obj1;
				if (result) {%>
	check = 1;
<%} else {%>
	check = 2;
<%}
			}%>
	if (check == 1) {
		alert('��밡��')

	} else if (check == 2) {
		alert('��� �Ұ�')
	}

	function onRangeInput(range) {
		document.querySelector("#years").value = range.value;

	}
	function idCheck() {
		var id = joinForm.id.value;
		if (id == '') {
			alert('id �Է� ���');
			return;
		}
		//
		var url = "/MyWeb/MS?cmd=checkId&id=" + id;
		alert(url);
		location.href = url;
	}
</script>
</head>
<body>

	<h3>ȸ������ �Է� ��</h3>
	<form name="joinForm" method="post" action="/MyWeb/MS">
	<input type="hidden" name="cmd" value="join">
		<table>
			<tr>
				<th>���̵�</th>
				<td><input type="text" name="id" value="<%=id%>"
					required="required"></td>
				<td><button type="button" onclick="javascript:idCheck();">���̵�
						�ߺ� �˻�</button></td>
			</tr>


			<tr>
				<th>��й�ȣ</th>
				<td colspan="2"><input type="password" name="pwd"
					required="required"></td>
			</tr>

			<tr>
				<th>�̸���</th>
				<td><input type="email" required="required"></td>
				<td><button type="button" onclick="javascript:validateEmail();">�̸���
						����</button></td>
			</tr>




			<tr>
				<th>��ȭ��ȣ</th>
				<td colspan="2"><input type="text" name="phone"></td>
			</tr>

			<tr>
				<th>����</th>
				<td class="center" colspan="2">��<input type="radio"
					name="gender" value="m">�� <input type="radio" name="gender"
					value="f"></td>
			</tr>


			<tr>
				<th>���</th>
				<td colspan="2">����<input type="checkbox" name="hobby"
					value="����"> ����<input type="checkbox" name="hobby"
					value="����"> ����<input type="checkbox" name="hobby"
					value="����"> ��ȭ<input type="checkbox" name="hobby"
					value="��ȭ"> ����<input type="checkbox" name="hobby"
					value="����"></td>
			</tr>
			<tr>
				<td colspan="3">���μҰ�</td>
			</tr>
			<tr>
				<td class="center" colspan="3"><textarea name="intro" rows="3"
						cols="50" placeholder="�̰��� �Է�"></textarea></td>
			</tr>
			<tr>
				<td class="center" colspan="3">
					<fieldset>
						<legend>���ɺо�</legend>
						<select name="interest">
							<option value="programing">���α׷���</option>
							<option value="auto">�ڵ���</option>
							<option value="electronic">���ڰ���</option>
							<option value="sport">������</option>
						</select> <label for="exp-year">���(��)</label> <input type="range"
							name="exp-year" step="1" min="0" max="100"
							oninput="javascript:onRangeInput(this);">
						<output for="exp-year" id="years">1</output>

					</fieldset>
				</td>
			</tr>

			<tr>
				<td class="center" colspan="3">
					<fieldset>
						<legend>�� ��</legend>
						<input type="number" name="birthYear" step="1" min="1960"
							max="2015">�� <input type="number" name="birthMonth"
							step="1" min="1" max="12">�� <input type="number"
							name="birthDay" step="1" min="1" max="31">��
					</fieldset>
				</td>
			</tr>
			<tr>
				<td class="center" colspan="3">
					<button type="submit">�� ��</button>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>