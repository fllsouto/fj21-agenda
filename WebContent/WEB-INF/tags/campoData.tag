<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ attribute name="id" required="true"%>
<%@ attribute type="java.util.Calendar" name="dataNascimento" required="false"%>


<c:choose>
	<c:when test="${ not empty dataNascimento}">
		<input type="text" id="${id}" name="${id}" 
		value="<fmt:formatDate value="${dataNascimento.time}" pattern="dd/MM/yyyy" />" />
	</c:when>
	<c:otherwise>
		<input type="text" id="${id}" name="${id}" />
	</c:otherwise>
</c:choose>

<script>
	$("#${id}").datepicker({
		dateFormat : 'dd/mm/yy'
	});
</script>