<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper>
    <body>
        <p>
            Student: ${student.id} ${student.firstname} ${student.lastname} was deleted
        </p>
        <div>
            <a href="${pageContext.request.contextPath}/students/">Back</a>
        </div>
</f:wrapper>