<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp"></jsp:include>

<h3>Device</h3>
<br>
<form action='/index/add' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
        <tr>
            <td><b>DeviceType</b></td> 
            <td><input type='text' name='deviceType' class='form-control'  required/></td>
        </tr>
 
        <tr>
            <td><b>fqnld</b></td>
            <td><input type='text' name='fqnld' class='form-control' required /></td>
        </tr>
 
        <tr>
            <td><b>FeatureName</b></td>
            <td><input type='text' name='featurename' class='form-control' size="20" required/></td>
            
        </tr>
        <tr>
            <td><b>FeatureStatus</b></td>
            <td><input type='text' name='featurestatus' class='form-control' size="20" required/></td>
            
        </tr>
        
         <tr>
            <td><b>Fiber</b></td>
            <td><input type='text' name='fiber' class='form-control' size="20" required/></td>
            
        </tr>
        
          <tr>
            <td><b>PortStatus</b></td>
            <td><input type='text' name='portstatus' class='form-control' size="20" required/></td>
            
        </tr>
 
 
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Register</button>
            </td>
        </tr>
 
    </table>
    <b><c:out value="${danger}"></c:out></b>
</form>



<h3>List Of Device</h3>
<br>
<table class="table table-hover">

    <thead>
      <tr>
        <th><b>DeviceType</b></th>
        <th><b>Fqnld</b></th>
        <th><b>FeatureName</b></th>
        <th><b>FeatureStatus</b></th>
        <th><b>Fiber</b></th>
        <th><b>PortStatus</b></th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="lou">
      <tr>
        <td><c:out value="${lou.deviceType}"></c:out></td>
        <td><c:out value="${lou.fqnld}"></c:out></td>
        <td><c:out value="${lou.featurename}"></c:out></td>
         <td><c:out value="${lou.featurestatus}"></c:out></td>
          <td><c:out value="${lou.fiber}"></c:out></td>
           <td><c:out value="${lou.portstatus}"></c:out></td>
			 <td>
             <a href="/index/${lou.id}/edit">
                <button type="submit" class="btn btn-primary">Edit Device</button>
                </a>
            </td>
            <td>
             <a href="/index/${lou.id}/delete">
                <button type="submit" class="btn btn-primary">Delete Device</button>
                </a>
            </td>
      </tr>

          </c:forEach>
    </tbody>
  </table>
</div>

<jsp:include page="footer.jsp"></jsp:include>