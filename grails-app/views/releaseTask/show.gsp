
<%@ page import="releasemanager.ReleaseTask" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'releaseTask.label', default: 'ReleaseTask')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-releaseTask" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-releaseTask" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list releaseTask">
			
				<g:if test="${releaseTaskInstance?.executedDate}">
				<li class="fieldcontain">
					<span id="executedDate-label" class="property-label"><g:message code="releaseTask.executedDate.label" default="Executed Date" /></span>
					
						<span class="property-value" aria-labelledby="executedDate-label"><g:formatDate date="${releaseTaskInstance?.executedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseTaskInstance?.releaseId}">
				<li class="fieldcontain">
					<span id="releaseId-label" class="property-label"><g:message code="releaseTask.releaseId.label" default="Release Id" /></span>
					
						<span class="property-value" aria-labelledby="releaseId-label"><g:fieldValue bean="${releaseTaskInstance}" field="releaseId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseTaskInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="releaseTask.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${releaseTaskInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseTaskInstance?.taskId}">
				<li class="fieldcontain">
					<span id="taskId-label" class="property-label"><g:message code="releaseTask.taskId.label" default="Task Id" /></span>
					
						<span class="property-value" aria-labelledby="taskId-label"><g:fieldValue bean="${releaseTaskInstance}" field="taskId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseTaskInstance?.taskName}">
				<li class="fieldcontain">
					<span id="taskName-label" class="property-label"><g:message code="releaseTask.taskName.label" default="Task Name" /></span>
					
						<span class="property-value" aria-labelledby="taskName-label"><g:fieldValue bean="${releaseTaskInstance}" field="taskName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseTaskInstance?.taskType}">
				<li class="fieldcontain">
					<span id="taskType-label" class="property-label"><g:message code="releaseTask.taskType.label" default="Task Type" /></span>
					
						<span class="property-value" aria-labelledby="taskType-label"><g:fieldValue bean="${releaseTaskInstance}" field="taskType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${releaseTaskInstance?.id}" />
					<g:link class="edit" action="edit" id="${releaseTaskInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
