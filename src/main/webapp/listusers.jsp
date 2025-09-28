<%@ page import="java.util.*" %>
<%@ page import="org.studyeasy.entity.UserEntity" %>

<jsp:include page="include/header.jsp"/>

<h2 style = "text-align:center;" >List Users:</h2>	
<table border="2">
 <thead>
   <tr>
     <th>User ID</th>
     <th>User Name</th>
     <th>Email</th>
     <th>Modify</th>
   </tr>
 </thead> 
 <tbody>
   <%
     List<UserEntity> users = (List<UserEntity>) request.getAttribute("userslist");
     if(users != null){
       for(UserEntity _user : users){
    	   request.setAttribute("user", _user);
   %>
         <tr>
           <td><%= _user.getUser_id() %></td>
           <td><%= _user.getUsername() %></td>
           <td><%= _user.getEmail() %></td>
           <td>
           <a href = "<%= request.getContextPath() %>/usercontroller?page=updateuser&user_id=<%= _user.getUser_id() %>"> Update </a> |
           <a href = "<%= request.getContextPath() %>/usercontroller?page=deleteuser&user_id=<%= _user.getUser_id() %>"> Delete </a>
          </td>
         </tr>
   <%
       }
     }
   %>
 </tbody>
</table>


<jsp:include page="/include/footer.jsp"/>

