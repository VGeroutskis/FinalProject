<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper>
        <div class = "row">
        <div class="col-md-2 col-md-offset-5">
            <div class="search-wrapper">
                <div class="bot-gap">
                    <span class="title">Courses Search</span>
                </div>
                <div class="bot-gap">
                    <form action="${pageContext.request.contextPath}/courses/search" method="get">
                        <input type="text" name="description" id="description" class="search rounded" placeholder="insert courses's description" autofocus>
                        <br><br>
                        <button type="submit" class="search-btn rounded color-btn">Search</button>
                    </form>
                </div>
            </div>
            <div class="insert-wrapper">
                <div class="bot-gap">
                    <span class="title">Course insert</span>
                </div>
                <div class="bot-gap">
                    <form action="${pageContext.request.contextPath}/course/insert" method="post">
                        <input type="text" name="description" id="description" class="insert rounded" placeholder="insert course description" autofocus required><br>
                        <select name="teacherId" id="teacherId" class="insert rounded" required>
                        	<option value="" disabled>Select teacher</option>
                        	<c:forEach var = "teacher" items = "${teachers}">
                        		<option value="${teacher.id}">${teacher.lastname}</option>
                        	</c:forEach>
                        </select>
                        <br><br>
                        <button type="submit" class="search-btn rounded color-btn">Insert</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="center">
            <c:if test="${sqlError}">
                <p>Error in insert</p>
            </c:if>
        </div>
        <div class="center">
            <c:if test="${courseNotFound}">
                <p>Course not found</p>
            </c:if>
        </div>
        </div>
</f:wrapper>