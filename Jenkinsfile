node {
	checkout scm
		docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

		def customImage = docker.build("clementleeky/reliability")
		customImage.withRun(-p 8501:8501')
                
	        println("Container is running!")
	}
}
