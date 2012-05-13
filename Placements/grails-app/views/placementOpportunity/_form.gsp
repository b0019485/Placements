<%@ page import="placements.PlacementOpportunity" %>



<div class="fieldcontain ${hasErrors(bean: placementOpportunityInstance, field: 'companyname', 'error')} ">
	<label for="companyname">
		<g:message code="placementOpportunity.companyname.label" default="Company name" />
		
	</label>
	<g:textField name="companyname" value="${placementOpportunityInstance?.companyname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: placementOpportunityInstance, field: 'jobtitle', 'error')} ">
	<label for="jobtitle">
		<g:message code="placementOpportunity.jobtitle.label" default="Jobtitle" />
		
	</label>
	<g:textField name="jobtitle" value="${placementOpportunityInstance?.jobtitle}"/>
</div>

