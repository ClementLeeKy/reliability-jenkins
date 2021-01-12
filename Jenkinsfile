node {
	checkout scm
	
	def customImage = docker.image('nichostst/reliability')
	
	customImage.run('-p 8501:8501')
	
	println("Container is running!")   //Jenkins executes pipeline well and prints output as shown
	                                   //However, face error log when trying to stop the docker container from running
	
	if (pipelineContext && pipelineContext.dockerContainer) {
		pipelineContext.dockerContainer.stop()
	}
	
	println("Container has stopped running!")
}
