node {
	checkout scm
	
	docker.build('nichostst/reliability').run('-p 8501:8501') {
		println("Container is running!")
	}
	
	Container.stop {
		println("Container has stopped!")
	}
}
