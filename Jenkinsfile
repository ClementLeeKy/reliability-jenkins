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
				def customImage = docker.build("clementleeky/reliability-image")
				customImage.run('-p 8501:8501')
				println("Container is running!")
				sh '''
				docker images
				docker stop customContainer
				echo 'Container stopped'
				'''
			}
		}
	}
}
