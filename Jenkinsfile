node {
	checkout scm
}
	
stages {
	stage('Run & Stop') {
		steps  {
			sh '''
			docker build -t "clementleeky-reliability" .
			docker run -t reliability-container clementleeky-reliability -p 8501:8501
			echo 'Container started'
			docker stop reliability-container
			echo 'Container stopped'
			'''
		}
	}
}
