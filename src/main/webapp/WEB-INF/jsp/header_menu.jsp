
     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

    
 <div class="container" style="margin-left:10pt">

             <table>
                <tr>
                    <td>
                        <a href="/hello">Home</a> -
                    </td>
                                    
                  <sec:authorize access="!isAuthenticated()">
                    
                    <td>
                       <a href="/about">About</a> -
                    </td>

                    <td>
                        <a href="/login">Login</a>
                    </td>

                 </sec:authorize>

                   <sec:authorize access="isAuthenticated()">
                     
                    <td>
                        <a href="/welcome">Welcome</a> -
                    </td> 

                    <td>
                        <a href="/cookies">Cookies</a> -
                    </td> 
                    
                    <td>
                        <a href="/demo/mvclistpersons">Show persons</a>
                   </td>

                                  
                   <td><div style="width:25px"></div></td>
                   <td>
                                       
                    <form name='logout' action="/logout" method='POST'>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <br />
                       <input class="btn btn-primary" name="submit" type="submit" value="Logout" />
           
                     </form>

                   </td>

                   </sec:authorize>
                  
               </tr>
            </table>
      
  <br/><br/>
      
    <sec:authorize access="isAuthenticated()">
            Welcome <i><b><sec:authentication property="name"/></b></i> 
            - you are authorized to administrate the list of persons !</b>
     </sec:authorize>

      
      
</div>
  
  