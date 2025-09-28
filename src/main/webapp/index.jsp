<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:include page="include/header.jsp">
  <jsp:param value="Homepage" name="title"/>
</jsp:include>

<div class="container" style="margin-top:50px; text-align:center;">
  <h1>Welcome to TestApp</h1>
  <p style="max-width:600px; margin:20px auto; font-size:16px; color:#444;">
    TestApp is a simple user-management demo built with JSP/Servlets and JDBC. 
    It showcases a classic MVC flow (Forms → Controller → DAO → Database) with clean UI and reliable CRUD operations.  
    Use the navigation above to manage users — add, view, update, or delete.
  </p>
	 <img src="assets/img/dashboard.png" alt="User Management" 
       style="margin-top:20px; margin-bottom:20px;max-width:300px; border-radius:8px; box-shadow:0 2px 8px rgba(0,0,0,0.2);">
</div>

<jsp:include page="include/footer.jsp"/>
