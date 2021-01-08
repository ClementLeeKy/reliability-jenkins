node {
	checkout scm
	
	docker.image('nichostst/reliability').withRun('-p 8501:8501') {
		println("Container is running!")
	}
}
