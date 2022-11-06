<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper>
    <body>
        <p>
            Course: ${courses.id} ${courses.description} ${courses.teacherId} was deleted
        </p>
        <div>
            <a href="${pageContext.request.contextPath}/courses/">Back</a>
        </div>
</f:wrapper>