<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${not esito}">errore!</c:if>
<c:if test="${esito}">aggiunto!</c:if>