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
				docker.build("clementleeky/reliability-image").run('-p 8501:8501') {
					println("Container is running!")
				}
				sh '''
				docker images
				docker stop customContainer
				echo 'Container stopped'
				'''
			}
		}
	}
}
