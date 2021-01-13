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
				docker build "clementleeky/reliability-image"
				docker run -p 8501:8501
				sh '''
				docker images
				docker stop customContainer
				echo 'Container stopped'
				'''
			}
		}
	}
}
