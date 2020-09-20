<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<h4>Your Todos ${name }</h4>

	<br />
	<br />
	<TABLE class="table table-striped">
	<caption>Your Tods Are</caption>
		<TR>
			<TH>Description</TH>
			<TH>Name</TH>
			<th>Target Date</th>
			<th>Delete</th>
			<th>Update</th>

		</TR>
		<c:forEach var="todo" items="${todos }">
			<TR>
				<TD>${todo.getDesc()}</TD>
				<TD>${todo.getUser()}</TD>
				<TD><fmt:formatDate
									value="${todo.targetDate}" /></TD>
				<td><a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.getId()}">Delete</a></td>
				<td><a type="button" class="btn btn-success" href="/update-todo?id=${todo.getId()}">Update</a></td>
			</TR>
		</c:forEach>
	</TABLE>
	<br />

	<div class="btn"><a  href="/add-todo"> Add Todo</a></div>
	</div>
<%@ include file="common/footer.jspf" %>
