node {
	checkout scm
	
	def customImage = docker.image('nichostst/reliability')
	
	customImage.run('-p 8501:8501')
	
	println("Container is running!")
	
	if (pipelineContext && pipelineContext.dockerContainer) {
		pipelineContext.dockerContainer.stop()
	}
	
	println("Container has stopped running!")
}
