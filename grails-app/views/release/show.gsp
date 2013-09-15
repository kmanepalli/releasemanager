
<%@ page import="releasemanager.Release" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'release.label', default: 'Release')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-release" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-release" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list release">
			
				<g:if test="${releaseInstance?.deployDate}">
				<li class="fieldcontain">
					<span id="deployDate-label" class="property-label"><g:message code="release.deployDate.label" default="Deploy Date" /></span>
					
						<span class="property-value" aria-labelledby="deployDate-label"><g:formatDate date="${releaseInstance?.deployDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseInstance?.jiraCode}">
				<li class="fieldcontain">
					<span id="jiraCode-label" class="property-label"><g:message code="release.jiraCode.label" default="Jira Code" /></span>
					
						<span class="property-value" aria-labelledby="jiraCode-label"><g:fieldValue bean="${releaseInstance}" field="jiraCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseInstance?.ownerDev}">
				<li class="fieldcontain">
					<span id="ownerDev-label" class="property-label"><g:message code="release.ownerDev.label" default="Owner Dev" /></span>
					
						<span class="property-value" aria-labelledby="ownerDev-label"><g:fieldValue bean="${releaseInstance}" field="ownerDev"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseInstance?.ownerLead}">
				<li class="fieldcontain">
					<span id="ownerLead-label" class="property-label"><g:message code="release.ownerLead.label" default="Owner Lead" /></span>
					
						<span class="property-value" aria-labelledby="ownerLead-label"><g:fieldValue bean="${releaseInstance}" field="ownerLead"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="release.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:formatDate date="${releaseInstance?.releaseDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${releaseInstance?.id}" />
					<g:link class="edit" action="edit" id="${releaseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
