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
				def customImage = docker.build("clementleeky/demo")
				def customContainer = customImage.run('-p 8501:8501')
				echo 'Container run'
				sh '''
				docker stop customContainer
				echo 'Container stopped'
				'''
			}
		}
	}
}
