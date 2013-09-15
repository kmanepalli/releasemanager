
<%@ page import="releasemanager.ReleaseTask" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'releaseTask.label', default: 'ReleaseTask')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-releaseTask" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-releaseTask" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="executedDate" title="${message(code: 'releaseTask.executedDate.label', default: 'Executed Date')}" />
					
						<g:sortableColumn property="releaseId" title="${message(code: 'releaseTask.releaseId.label', default: 'Release Id')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'releaseTask.status.label', default: 'Status')}" />
					
						<g:sortableColumn property="taskId" title="${message(code: 'releaseTask.taskId.label', default: 'Task Id')}" />
					
						<g:sortableColumn property="taskName" title="${message(code: 'releaseTask.taskName.label', default: 'Task Name')}" />
					
						<g:sortableColumn property="taskType" title="${message(code: 'releaseTask.taskType.label', default: 'Task Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${releaseTaskInstanceList}" status="i" var="releaseTaskInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${releaseTaskInstance.id}">${fieldValue(bean: releaseTaskInstance, field: "executedDate")}</g:link></td>
					
						<td>${fieldValue(bean: releaseTaskInstance, field: "releaseId")}</td>
					
						<td>${fieldValue(bean: releaseTaskInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: releaseTaskInstance, field: "taskId")}</td>
					
						<td>${fieldValue(bean: releaseTaskInstance, field: "taskName")}</td>
					
						<td>${fieldValue(bean: releaseTaskInstance, field: "taskType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${releaseTaskInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
