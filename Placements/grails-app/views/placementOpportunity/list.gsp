
<%@ page import="placements.PlacementOpportunity" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'placementOpportunity.label', default: 'PlacementOpportunity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-placementOpportunity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-placementOpportunity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="companyname" title="${message(code: 'placementOpportunity.companyname.label', default: 'Companyname')}" />
					
						<g:sortableColumn property="jobtitle" title="${message(code: 'placementOpportunity.jobtitle.label', default: 'Jobtitle')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${placementOpportunityInstanceList}" status="i" var="placementOpportunityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${placementOpportunityInstance.id}">${fieldValue(bean: placementOpportunityInstance, field: "companyname")}</g:link></td>
					
						<td>${fieldValue(bean: placementOpportunityInstance, field: "jobtitle")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${placementOpportunityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
