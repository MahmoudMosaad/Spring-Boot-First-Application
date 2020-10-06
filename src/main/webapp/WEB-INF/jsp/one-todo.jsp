<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<h4>Your Todos ${name }</h4>

	<br /> <br />
	<TABLE class="table table-striped">
		<caption> All Details about ' ${onetodo.getDesc()} '</caption>
		<TR>
			<TH>Description</TH>
			<TH>Name</TH>
			<th>Target Date</th>
			<th>Delete</th>
			<th>Update</th>

		</TR>
			<TR>
				<TD>${onetodo.getDesc()}</TD>
				<TD>${onetodo.getUser()}</TD>
				<TD><fmt:formatDate value="${onetodo.targetDate}" /></TD>
				<td><a type="button" class="btn btn-warning"
					href="/delete-todo?id=${onetodo.getId()}">Delete</a></td>
				<td><a type="button" class="btn btn-success"
					href="/update-todo?id=${onetodo.getId()}">Update</a></td>
			</TR>
	</TABLE>
	<br />

</div>
<%@ include file="common/footer.jspf"%>
