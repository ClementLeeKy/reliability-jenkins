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
				docker build "reliability-image" .
				MYSYS_NO_PATHCONV=1 docker run --name reliability-container reliability-image 
				echo 'Container started'
				docker stop reliability-container
				echo 'Container stopped'
				'''
			}
		}
	}
}
