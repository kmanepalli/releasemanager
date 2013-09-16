package releasemanager



class TestJob {
    static triggers = {
      simple repeatInterval: 5000l // execute job once in 5 seconds
    }

    def execute() {
		def relTasks =ReleaseTask.getAll().each{
            println "release tasks"+it.taskName
        
        }
    	
	}
}
