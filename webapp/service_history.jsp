<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mockey" uri="/WEB-INF/mockey.tld" %>
<c:set var="actionKey" value="service_history" scope="request" />
<c:set var="pageTitle" value="History" scope="request"/>         
<jsp:include page="/WEB-INF/common/header.jsp" />   
<div id="main">
    <h1>Service History: <span class="highlight"><c:out value="${mockservice.serviceName}"/></span></h1>    
    <%@ include file="/WEB-INF/common/inc_action_links.jsp"%>    
    <div>
       <c:choose>
         <c:when test="${!empty ip_addresses}">
         <p>This is a list of IP addresses who called your service. Click on the IP to see all the messages exchanged between Mockey and this IP.</p>
         <c:forEach var="ip_address" items="${ip_addresses}">
         <c:out value="${ip_address}" escapeXml="false"/>
         </c:forEach>
         </c:when>
         <c:otherwise>
         No history. 
         </c:otherwise>
         </c:choose>
    </div>   
<jsp:include page="/WEB-INF/common/footer.jsp" />