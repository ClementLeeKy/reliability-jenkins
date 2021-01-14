node {
	checkout scm
	
	stage('Build & Run Docker Image') {
		sh '''
		docker build -t "reliability" .
		docker run -p 8501:8501 --name rel-container reliability
		'''
		echo "Container started"
	}
	
	stage('Stop Docker Container') {
		sh '''
		docker stop rel-container
		'''
		echo "Container stopped"
	}
}
	
	
		

	
	
