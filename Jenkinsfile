node {
	checkout scm
	
	def customImage = docker.build("reliability-image") .
	def customContainer = customImage.run('-p 8501:8501')
	
	echo 'Container is running!'
	sh 'docker stop customContainer'
	echo 'Container has stopped running!'
}

	
	
