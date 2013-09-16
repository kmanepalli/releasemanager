package releasemanager

import org.springframework.dao.DataIntegrityViolationException

class ReleaseTaskController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [releaseTaskInstanceList: ReleaseTask.list(params), releaseTaskInstanceTotal: ReleaseTask.count()]
    }

    def create() {
        [releaseTaskInstance: new ReleaseTask(params)]
    }

    def save() {
		println "its in Release Task save()"+params;
		params.taskId = 1
		params.executedDate=new Date()
   		params.taskName="first";
    	params.taskType="email";
    	params.status="true";

		def tasks =Tasks.getAll().each{
			params.taskId = it.id
        	params.executedDate=new Date()
        	params.taskName=it.taskName
        	params.taskType=it.taskType
        	params.status="true";
			println "params =="+params;	
		
			def releaseTaskInstance = new ReleaseTask(params)
			releaseTaskInstance.save(flush: true)
		}
		
        //def releaseTaskInstance = new ReleaseTask(params)
        //if (!releaseTaskInstance.save(flush: true)) {
          //  render(view: "create", model: [releaseTaskInstance: releaseTaskInstance])
           // return
       // }

        flash.message = message(code: 'default.created.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask')])
        redirect(action: "list")
    }

    def show(Long id) {
        def releaseTaskInstance = ReleaseTask.get(id)
        if (!releaseTaskInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask'), id])
            redirect(action: "list")
            return
        }

        [releaseTaskInstance: releaseTaskInstance]
    }

    def edit(Long id) {
        def releaseTaskInstance = ReleaseTask.get(id)
        if (!releaseTaskInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask'), id])
            redirect(action: "list")
            return
        }

        [releaseTaskInstance: releaseTaskInstance]
    }

    def update(Long id, Long version) {
        def releaseTaskInstance = ReleaseTask.get(id)
        if (!releaseTaskInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (releaseTaskInstance.version > version) {
                releaseTaskInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'releaseTask.label', default: 'ReleaseTask')] as Object[],
                          "Another user has updated this ReleaseTask while you were editing")
                render(view: "edit", model: [releaseTaskInstance: releaseTaskInstance])
                return
            }
        }

        releaseTaskInstance.properties = params

        if (!releaseTaskInstance.save(flush: true)) {
            render(view: "edit", model: [releaseTaskInstance: releaseTaskInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask'), releaseTaskInstance.id])
        redirect(action: "show", id: releaseTaskInstance.id)
    }

    def delete(Long id) {
        def releaseTaskInstance = ReleaseTask.get(id)
        if (!releaseTaskInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask'), id])
            redirect(action: "list")
            return
        }

        try {
            releaseTaskInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'releaseTask.label', default: 'ReleaseTask'), id])
            redirect(action: "show", id: id)
        }
    }
}
