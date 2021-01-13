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
				docker build "clementleeky/reliability-image"
				docker run -p 8501:8501 clementleeky/reliability-image
				docker images
				docker stop customContainer
				echo 'Container stopped'
				'''
			}
		}
	}
}
