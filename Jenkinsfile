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
			def customImage = docker.build("clementleeky/reliability-image")
			def c = customImage.run('-p 8501:8501')
			println("Container is running!")
			steps  {
				sh '''
				docker images
				docker stop customContainer
				echo 'Container stopped'
				'''
			}
		}
	}
}
