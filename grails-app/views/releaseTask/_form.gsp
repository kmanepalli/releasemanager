<%@ page import="releasemanager.ReleaseTask" %>



<div class="fieldcontain ${hasErrors(bean: releaseTaskInstance, field: 'executedDate', 'error')} required">
	<label for="executedDate">
		<g:message code="releaseTask.executedDate.label" default="Executed Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="executedDate" precision="day"  value="${releaseTaskInstance?.executedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: releaseTaskInstance, field: 'releaseId', 'error')} required">
	<label for="releaseId">
		<g:message code="releaseTask.releaseId.label" default="Release Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="releaseId" type="number" value="${releaseTaskInstance.releaseId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseTaskInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="releaseTask.status.label" default="Status" />
		
	</label>
	<g:textField name="status" value="${releaseTaskInstance?.status}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseTaskInstance, field: 'taskId', 'error')} required">
	<label for="taskId">
		<g:message code="releaseTask.taskId.label" default="Task Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="taskId" type="number" value="${releaseTaskInstance.taskId}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseTaskInstance, field: 'taskName', 'error')} ">
	<label for="taskName">
		<g:message code="releaseTask.taskName.label" default="Task Name" />
		
	</label>
	<g:textField name="taskName" value="${releaseTaskInstance?.taskName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: releaseTaskInstance, field: 'taskType', 'error')} ">
	<label for="taskType">
		<g:message code="releaseTask.taskType.label" default="Task Type" />
		
	</label>
	<g:textField name="taskType" value="${releaseTaskInstance?.taskType}"/>
</div>

