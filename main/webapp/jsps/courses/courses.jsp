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
                        <th>ID</th>
                        <th>Description</th>
                        <th>Teacher ID</th>
                        <th>Delete</th>
                        <th>Update</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var = "course" items = "${courses}">
                        <tr>
                            <td>${course.id}</td>
                            <td>${course.description}</td>
                            <td>${course.teacherId}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/courses/delete?id=${course.id}&description=${course.description}&teacherId=${course.teacherId}">Delete</a>
                            </td>
                            <td>
                                <a href="${pageContext.request.contextPath}/courses/update?id=${course.id}&description=${course.description}&teacherId=${course.teacherId}">Update</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        </div>
        <div>
            <a href="${pageContext.request.contextPath}/courses/">Back</a>
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