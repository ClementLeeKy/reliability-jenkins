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
			steps {
				sh '''
				rm -rf /var/lib/jenkins/workspace/*
				'''
				checkout scm
			}
		}
		stage('Run & Stop') {
			steps  {
				sh '''
				docker build -t "clementleeky-reliability" $(pwd)
				docker run --name reliability-container clementleeky-reliability -p 8501:8501
				echo 'Container started'
				docker stop reliability-container
				echo 'Container stopped'
				'''
			}
		}
	}
}
