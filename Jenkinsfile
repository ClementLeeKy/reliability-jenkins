node {

	checkout scm
		docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

		def customImage = docker.build("clementleeky/reliability)"

				def container = docker.run(customImage)

				println("Container is running!")

				container.stop()

				println("Container has stopped!")
				}
				}
