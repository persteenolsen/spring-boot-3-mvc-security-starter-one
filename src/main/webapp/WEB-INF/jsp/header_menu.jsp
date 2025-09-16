<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


  <div class="container">

    <table cellpadding="5" style="width:35%; background-color:whitesmoke;">
      <tr>
        <td>
          <a href="/hello">Home</a>
        </td>

        <sec:authorize access="!isAuthenticated()">

          <td>
            <a href="/about">About</a>
          </td>

          <td>
            <a href="/login">Login</a>
          </td>

        </sec:authorize>

        <sec:authorize access="isAuthenticated()">

          <td>
            <a href="/welcome">Welcome</a>
          </td>

          <td>
            <a href="/cookies">Cookies</a>
          </td>

          <td>
            <a href="/demo/mvclistpersons">Show persons</a>
          </td>

          
          <td style="vertical-align: middle;">

            <form name='logout' action="/logout" method='POST'>

              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
              
              <input class="btn btn-primary" name="submit" type="submit" value="Logout" />

            </form>
           
          </td>

        </sec:authorize>

      </tr>
    </table>

    <br /><br />

    <sec:authorize access="isAuthenticated()">
      Welcome <i><b>
          <sec:authentication property="name" />
        </b></i>
      - you are authorized to administrate the list of persons !</b>
    </sec:authorize>



  </div>