
<%@ page import="releasemanager.Tasks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tasks.label', default: 'Tasks')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tasks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tasks" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="confirmationEmail" title="${message(code: 'tasks.confirmationEmail.label', default: 'Confirmation Email')}" />
					
						<g:sortableColumn property="executeAfterDay" title="${message(code: 'tasks.executeAfterDay.label', default: 'Execute After Day')}" />
					
						<g:sortableColumn property="executeBeforeDay" title="${message(code: 'tasks.executeBeforeDay.label', default: 'Execute Before Day')}" />
					
						<g:sortableColumn property="taskName" title="${message(code: 'tasks.taskName.label', default: 'Task Name')}" />
					
						<g:sortableColumn property="taskType" title="${message(code: 'tasks.taskType.label', default: 'Task Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tasksInstanceList}" status="i" var="tasksInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tasksInstance.id}">${fieldValue(bean: tasksInstance, field: "confirmationEmail")}</g:link></td>
					
						<td>${fieldValue(bean: tasksInstance, field: "executeAfterDay")}</td>
					
						<td>${fieldValue(bean: tasksInstance, field: "executeBeforeDay")}</td>
					
						<td>${fieldValue(bean: tasksInstance, field: "taskName")}</td>
					
						<td>${fieldValue(bean: tasksInstance, field: "taskType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tasksInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
