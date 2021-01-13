node {
	checkout scm
	
	//def customImage = docker.build("clementleeky/reliability-image")
	
	docker.image('ubuntu').withRun() {
		println("Container is running!")
	}
}
	
//	def customContainer = customImage.withRun('-p 8501:8501') {
	
//	println("Container is running!")  
//   }
// }
