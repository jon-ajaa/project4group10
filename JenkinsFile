pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'jonajaa/jfc:latest'
        CONTAINER_NAME = 'jfc'
        PORT_MAPPING = '8089:80'  // adjust the port mapping as needed
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}", '-f Dockerfile .')
                }
            }
        }

    // stage('Clean Existing Container') {
    //     steps {
    //         script {
    //             bat """
    //             FOR /F "tokens=*" %%i IN ('docker ps -aq -f "name=${CONTAINER_NAME}"') DO (
    //                 docker stop %%i || echo "No running container"
    //                 docker rm %%i || echo "No container to remove"
    //             )
    //             """
    //         }
    //     }
    // }


        stage('Run Docker Container') {
            steps {
                script {
                    // run Docker container based on the built image
                    docker.image("${DOCKER_IMAGE}").run("-p ${PORT_MAPPING} --name ${CONTAINER_NAME}")
                }
            }
        }
    }
}
