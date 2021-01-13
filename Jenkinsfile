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
				docker run --name reliability-container ubuntu 
				echo 'Container started'
				docker stop reliability-container
				echo 'Container stopped'
				'''
			}
		}
	}
}
