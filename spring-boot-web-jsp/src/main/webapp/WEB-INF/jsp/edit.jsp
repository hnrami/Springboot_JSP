<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<<jsp:include page="header.jsp"></jsp:include>

<div class="container">

<h3>User Registration</h3>
<form action='/index/update' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
   <tr>
            <td><b>deviceType</b></td> 
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
 
 			<input type='hidden' id='id' rows='5' class='form-control' name='id' value="${user.id}"/>
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Update User Information</button>
            </td>
        </tr>
 
    </table>
</form>


</div>

<jsp:include page="footer.jsp"></jsp:include>