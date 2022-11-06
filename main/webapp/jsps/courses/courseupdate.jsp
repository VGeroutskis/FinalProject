<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper>
        <div class = "row">
        <div class="col-md-2 col-md-offset-5">
            <form action="${pageContext.request.contextPath}/courses/update" method="post">
                <input type="text" name="id" id="id" class="insert rounded" value="${course.id}" hidden = "true"><br>
                <input type="text" name="description" id="description" class="insert rounded" value="${course.description}"><br>
                <select name="teacherId" id="teacherId" class="insert rounded" required>
                	<option value="" disabled>Select teacher</option>
                    	<c:forEach var = "teacher" items = "${teachers}">
                       		<option value="${teacher.id}">${teacher.lastname}</option>
                        </c:forEach>
                </select><br><br>
                <button type="submit" class="search-btn rounded color-btn">Update Course</button>
            </form>
        </div>
        </div>
</f:wrapper>