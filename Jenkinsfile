node {
	checkout scm
	
	def customImage = docker.build("clementleeky/reliability-image")
	
	def customContainer = customImage.run('-p 8501:8501')
	
	println("Container is running!")  

}
