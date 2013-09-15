<%@ page import="releasemanager.Release" %>



<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'deployDate', 'error')} required">
	<label for="deployDate">
		<g:message code="release.deployDate.label" default="Deploy Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deployDate" precision="day"  value="${releaseInstance?.deployDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'jiraCode', 'error')} ">
	<label for="jiraCode">
		<g:message code="release.jiraCode.label" default="Jira Code" />
		
	</label>
	<g:textField name="jiraCode" value="${releaseInstance?.jiraCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'ownerDev', 'error')} ">
	<label for="ownerDev">
		<g:message code="release.ownerDev.label" default="Owner Dev" />
		
	</label>
	<g:textField name="ownerDev" value="${releaseInstance?.ownerDev}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'ownerLead', 'error')} ">
	<label for="ownerLead">
		<g:message code="release.ownerLead.label" default="Owner Lead" />
		
	</label>
	<g:textField name="ownerLead" value="${releaseInstance?.ownerLead}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseInstance, field: 'releaseDate', 'error')} required">
	<label for="releaseDate">
		<g:message code="release.releaseDate.label" default="Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="releaseDate" precision="day"  value="${releaseInstance?.releaseDate}"  />
</div>

