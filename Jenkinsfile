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
				docker build ubuntu .
				MYSYS_NO_PATHCONV=1 docker run --name reliability-container ubuntu 
				echo 'Container started'
				docker stop reliability-container
				echo 'Container stopped'
				'''
			}
		}
	}
}
