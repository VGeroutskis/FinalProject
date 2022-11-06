<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<f:wrapper>

        <p>
            Teacher: ${teacher.id} ${teacher.firstname} ${teacher.lastname} was deleted
        </p>
        <div>
            <a href="${pageContext.request.contextPath}/teachers/">Back</a>
        </div>
      
</f:wrapper>