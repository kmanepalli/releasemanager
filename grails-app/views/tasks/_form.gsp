<%@ page import="releasemanager.Tasks" %>



<div class="fieldcontain ${hasErrors(bean: tasksInstance, field: 'confirmationEmail', 'error')} ">
	<label for="confirmationEmail">
		<g:message code="tasks.confirmationEmail.label" default="Confirmation Email" />
		
	</label>
	<g:textField name="confirmationEmail" value="${tasksInstance?.confirmationEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tasksInstance, field: 'executeAfterDay', 'error')} required">
	<label for="executeAfterDay">
		<g:message code="tasks.executeAfterDay.label" default="Execute After Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="executeAfterDay" type="number" value="${tasksInstance.executeAfterDay}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: tasksInstance, field: 'executeBeforeDay', 'error')} required">
	<label for="executeBeforeDay">
		<g:message code="tasks.executeBeforeDay.label" default="Execute Before Day" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="executeBeforeDay" type="number" value="${tasksInstance.executeBeforeDay}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: tasksInstance, field: 'taskName', 'error')} ">
	<label for="taskName">
		<g:message code="tasks.taskName.label" default="Task Name" />
		
	</label>
	<g:textField name="taskName" value="${tasksInstance?.taskName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tasksInstance, field: 'taskType', 'error')} ">
	<label for="taskType">
		<g:message code="tasks.taskType.label" default="Task Type" />
		
	</label>
	<g:textField name="taskType" value="${tasksInstance?.taskType}"/>
</div>

