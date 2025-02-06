
     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    
 <div class="container" style="margin-left:5pt">

             <table>
                <tr>
                    <td>
                        <a href="/hello">Home</a> -
                    </td>
                                   
                    <td>
                        <a href="/about">About</a> -
                    </td>

                   <sec:authorize access="isAuthenticated()">
                     
                    <td>
                        <a href="/welcome">Welcome</a> -
                    </td> 
                    
                    <td>
                        <a href="/demo/mvclistpersons">Show persons</a> -
                   </td>

                   <td>
                      <a href="/logout">Logout</a>
                   </td>


                   </sec:authorize>
                   <sec:authorize access="!isAuthenticated()">
                       <td><a href="/login">Login</a></td>
                    </sec:authorize>
               </tr>
            </table>
      
  <br/><br/>
      
    <sec:authorize access="isAuthenticated()">
            Welcome <i><b><sec:authentication property="name"/></b></i> 
            - you are authorized to administrate the list of persons !</b>
     </sec:authorize>

      
      
</div>
  
  