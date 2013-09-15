
<%@ page import="releasemanager.Release" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'release.label', default: 'Release')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-release" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-release" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="deployDate" title="${message(code: 'release.deployDate.label', default: 'Deploy Date')}" />
					
						<g:sortableColumn property="jiraCode" title="${message(code: 'release.jiraCode.label', default: 'Jira Code')}" />
					
						<g:sortableColumn property="ownerDev" title="${message(code: 'release.ownerDev.label', default: 'Owner Dev')}" />
					
						<g:sortableColumn property="ownerLead" title="${message(code: 'release.ownerLead.label', default: 'Owner Lead')}" />
					
						<g:sortableColumn property="releaseDate" title="${message(code: 'release.releaseDate.label', default: 'Release Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${releaseInstanceList}" status="i" var="releaseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${releaseInstance.id}">${fieldValue(bean: releaseInstance, field: "deployDate")}</g:link></td>
					
						<td>${fieldValue(bean: releaseInstance, field: "jiraCode")}</td>
					
						<td>${fieldValue(bean: releaseInstance, field: "ownerDev")}</td>
					
						<td>${fieldValue(bean: releaseInstance, field: "ownerLead")}</td>
					
						<td><g:formatDate date="${releaseInstance.releaseDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${releaseInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
