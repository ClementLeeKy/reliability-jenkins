node {
	checkout scm
		docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

		def customImage = docker.build("clementleeky/reliability)"

		customImage.run()

		println("Container is running!")
	}
}
