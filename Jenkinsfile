node {
	checkout scm
	
	docker.image('nichostst/reliability').run('-p 8501:8501') {
		println("Container is running!")
	}
	
	Container.stop {
		println("Container has stopped!")
	}
}
