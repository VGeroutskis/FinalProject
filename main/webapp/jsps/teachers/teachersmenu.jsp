<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper>
<div class = "row">
        <div class="col-md-2 col-md-offset-5">
            <div class="search-wrapper">
                <div class="bot-gap">
                    <span class="title">Teachers Search</span>
                </div>
                <div class="bot-gap">
                    <form action="${pageContext.request.contextPath}/teachers/search" method="get">
                        <input type="text" name="lastname" id="lastname" class="search rounded" placeholder="insert teacher's lastname" autofocus>
                        <br><br>
                        <button type="submit" class="search-btn rounded color-btn">Search</button>
                    </form>
                </div>
            </div>
            <div class="insert-wrapper">
                <div class="bot-gap">
                    <span class="title">Teachers insert</span>
                </div>
                <div class="bot-gap">
                    <form action="${pageContext.request.contextPath}/teachers/insert" method="post">
                        <input type="text" name="lastname" id="lastname" class="insert rounded" placeholder="insert teacher lastname" autofocus required><br>
                        <input type="text" name="firstname" id="firstname" class="insert rounded" placeholder="insert teacher firstanme" required>
                        <br><br>
                        <button type="submit" class="search-btn rounded color-btn">Insert</button>
                    </form>
                </div>
            </div>
        </div>
        </div>
        <div class="center">
            <c:if test="${sqlError}">
                <p>Error in insert</p>
            </c:if>
        </div>
        <div class="center">
            <c:if test="${teacherNotFound}">
                <p>Teacher not found</p>
            </c:if>
        </div>
        
</f:wrapper>