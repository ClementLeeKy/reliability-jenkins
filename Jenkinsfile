node {
	checkout scm
	
	def image = docker.build("reliability-image", '.')
        def container = image.run('--name ' + "streamlit-container")
        println('Container is running!')   
        
        sh 'docker rm -f streamlit-container && echo "Container streamlit-container removed"'                      
    }
	
	

	
		

	
	
