<%@ page import="java.util.*" %>
<%@ page import="org.studyeasy.entity.UserEntity" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>


	<c:choose>	
	  <c:when test="${not empty user and not empty user.user_id}">
	    <!-- UPDATE -->
	    <c:url var="postUrl" value="/usercontroller">
	      <c:param name="page" value="updateuser"/>
	    </c:url>
	  </c:when>
	  <c:otherwise>
	    <!-- ADD -->
	    <c:url var="postUrl" value="/usercontroller">
	      <c:param name="page" value="adduser"/>
	    </c:url>
	  </c:otherwise>
	</c:choose>
    <form action="${postUrl}" method="post" style="width:400px; margin: 20px auto; padding:20px; border:1px solid #ccc; border-radius:8px; background:#f9f9f9;">
        
        <!--  for Update only  -->
        <c:if test="${not empty user.user_id}">
         <input type="hidden" name="user_id" value="${user.user_id}">
         <input type="hidden" name="page" value="updateuser">         
        </c:if>
        
        <!--  for Update only  -->
        <c:if test="${empty user.user_id}">
         <input type="hidden" name="page" value="adduser">         
        </c:if>
        
        <div style="margin-bottom:15px;">
            <label for="username">User Name:</label><br>
            <input type="text" id="username" name="uname" class="form-control" value="${user.username}" required>
        </div>
        
        <div style="margin-bottom:15px;">
            <label for="email">Email:</label><br>
            <input type="email" id="email" name="emailId" class="form-control" value="${user.email }" required>
        </div>
        
        <div style="text-align:center;">
            <button type="submit" class="btn btn-primary">
            <c:out value="${empty user.user_id ? 'Add User' : 'Update User'}"/>
            </button>
        </div>
    </form>



