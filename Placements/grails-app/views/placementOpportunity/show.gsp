
<%@ page import="placements.PlacementOpportunity" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'placementOpportunity.label', default: 'PlacementOpportunity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-placementOpportunity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-placementOpportunity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list placementOpportunity">
			
				<g:if test="${placementOpportunityInstance?.companyname}">
				<li class="fieldcontain">
					<span id="companyname-label" class="property-label"><g:message code="placementOpportunity.companyname.label" default="Companyname" /></span>
					
						<span class="property-value" aria-labelledby="companyname-label"><g:fieldValue bean="${placementOpportunityInstance}" field="companyname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${placementOpportunityInstance?.jobtitle}">
				<li class="fieldcontain">
					<span id="jobtitle-label" class="property-label"><g:message code="placementOpportunity.jobtitle.label" default="Jobtitle" /></span>
					
						<span class="property-value" aria-labelledby="jobtitle-label"><g:fieldValue bean="${placementOpportunityInstance}" field="jobtitle"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${placementOpportunityInstance?.id}" />
					<g:link class="edit" action="edit" id="${placementOpportunityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
