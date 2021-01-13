pipeline {
	agent {
		dockerfile {
			filename 'Dockerfile'
			dir '.'
			args ''
		}
	}
	stages {
		stage ('Checkout') {
			sh '''
			rm -rf /var/lib/jenkins/workspace/*
			'''
			checkout scm
		}
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
}
