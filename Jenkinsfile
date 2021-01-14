node {
	checkout scm
	
	def image = docker.build(reliability-image, '.')
	def container = image.run('--name ' + streamlit-container)
	println('Container is running!')
	
	container.stop()
	println('Container has stopped')
}
	
	
	
