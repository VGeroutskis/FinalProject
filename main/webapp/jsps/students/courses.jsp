<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper>
       <div class = "row">
        <div class="col-md-2 col-md-offset-5">
            <table>
                <thead>
                    <tr>
                        <th>Course</th>
                        <th>Teacher Firstname</th>
                        <th>Teacher Lastname</th>
                        <th>Add/Remove</th>
                    </tr>
                </thead>
                <tbody>
                 <tr>
                    <c:forEach var = "course" items = "${courses}" varStatus = "count">
                    		
                     		<td>${course.description}</td>
                            <td>${teachers[count.index].firstname}</td>
                            <td>${teachers[count.index].lastname}</td>
                            <td>
                            	<c:if test = "${status[count.index] == 1}">
                            		<a href = "${pageContext.request.contextPath}/students/addcourse?studentId=${studentId}&courseId=${course.id}">Add</a>
                            	</c:if>
                            	<c:if test = "${status[count.index] == 0}">
                            		<a href = "${pageContext.request.contextPath}/students/deletecourse?studentId=${studentId}&courseId=${course.id}">Remove</a>
                            	</c:if>
                            </td>
                        </tr>
                     </c:forEach>
                </tbody>
            </table>
        </div>
        </div>
        <div>
            <a href="${pageContext.request.contextPath}/students/search?lastname=">Back</a>
        </div>
        <div>
            <c:if test="${deleteAPIError}">
                <p>Something went wrong in Delete</p>
            </c:if>
        </div>
        <div>
            <c:if test="${sqlFound}">
                <p>Error in SQL update</p>
            </c:if>
        </div>
</f:wrapper>