<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="it" class="h-100" >
	 <head>

	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	 	
	   <title>Cancella Elemento</title>
	   
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class='card'>
					    <div class='card-header'>
					        <h5>Cancella Elemento</h5>
					    </div>
					    
					    
					
					    <div class='card-body'>
					    <dl class="row">
							  <dt class="col-sm-3 text-right">Denominazione:</dt>
							  <dd class="col-sm-9">${delete_satellite_attr.denominazione}</dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Codice:</dt>
							  <dd class="col-sm-9">${delete_satellite_attr.codice}</dd>
					    	</dl>
					    	
					    
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Data di Lancio:</dt>
							  <dd class="col-sm-9">
							  	<fmt:parseDate value="${delete_satellite_attr.dataLancio}" pattern="yyyy-MM-dd" var="localDateToBeParsed" type="date"/>
								<fmt:formatDate pattern="dd/MM/yyyy" value="${localDateToBeParsed}" />
							  </dd>
					    	</dl>
					   
					    	
					    		<dl class="row">
							  <dt class="col-sm-3 text-right">Data di Rientro:</dt>
							  <dd class="col-sm-9">
							  	<fmt:parseDate value="${delete_satellite_attr.dataRientro}" pattern="yyyy-MM-dd" var="localDateToBeParsed" type="date"/>
								<fmt:formatDate pattern="dd/MM/yyyy" value="${localDateToBeParsed}" />
							  </dd>
					    	</dl>
					    	
					    	<dl class="row">
							  <dt class="col-sm-3 text-right">Stato:</dt>
							  <dd class="col-sm-9">${delete_satellite_attr.stato}</dd>
					    	</dl>
					    	
					    	<p>Sei sicuro di voler cancellare questo elemento?</p>
							<form:form method="post" action="${pageContext.request.contextPath}/satellite/delete" modelAttribute="deleteObject">
								<input type="hidden" name="id" value="${delete_satellite_attr.id}" />
								<button type="submit" class="btn btn-danger">Cancella</button>
								<a href="${pageContext.request.contextPath}/satellite" class='btn btn-outline-secondary' style='width:80px'>
					            	<i class='fa fa-chevron-left'></i> Annulla
					        	</a>
							</form:form>
					    </div>
					    <!-- end card body -->
					    
					<!-- end card -->
					</div>	
			  
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>