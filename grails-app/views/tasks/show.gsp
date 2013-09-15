
<%@ page import="releasemanager.Tasks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tasks.label', default: 'Tasks')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tasks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tasks" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tasks">
			
				<g:if test="${tasksInstance?.confirmationEmail}">
				<li class="fieldcontain">
					<span id="confirmationEmail-label" class="property-label"><g:message code="tasks.confirmationEmail.label" default="Confirmation Email" /></span>
					
						<span class="property-value" aria-labelledby="confirmationEmail-label"><g:fieldValue bean="${tasksInstance}" field="confirmationEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tasksInstance?.executeAfterDay}">
				<li class="fieldcontain">
					<span id="executeAfterDay-label" class="property-label"><g:message code="tasks.executeAfterDay.label" default="Execute After Day" /></span>
					
						<span class="property-value" aria-labelledby="executeAfterDay-label"><g:fieldValue bean="${tasksInstance}" field="executeAfterDay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tasksInstance?.executeBeforeDay}">
				<li class="fieldcontain">
					<span id="executeBeforeDay-label" class="property-label"><g:message code="tasks.executeBeforeDay.label" default="Execute Before Day" /></span>
					
						<span class="property-value" aria-labelledby="executeBeforeDay-label"><g:fieldValue bean="${tasksInstance}" field="executeBeforeDay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tasksInstance?.taskName}">
				<li class="fieldcontain">
					<span id="taskName-label" class="property-label"><g:message code="tasks.taskName.label" default="Task Name" /></span>
					
						<span class="property-value" aria-labelledby="taskName-label"><g:fieldValue bean="${tasksInstance}" field="taskName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tasksInstance?.taskType}">
				<li class="fieldcontain">
					<span id="taskType-label" class="property-label"><g:message code="tasks.taskType.label" default="Task Type" /></span>
					
						<span class="property-value" aria-labelledby="taskType-label"><g:fieldValue bean="${tasksInstance}" field="taskType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tasksInstance?.id}" />
					<g:link class="edit" action="edit" id="${tasksInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
