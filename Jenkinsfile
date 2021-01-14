node {
	checkout scm
	
	stage('Build & Run Docker Image') {
		def image = docker.build("reliability-image", '.')
		def container = image.run('--name ' + "streamlit-container")
		println('Container is running!')
	}
	
	stage('Stop Docker Container') {
		bat 'docker rm -f streamlit-container && echo "Container streamlit-container removed"'
	}
}
	
	
	

	
		

	
	
