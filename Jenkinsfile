/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "the agent's env is the jenkins image itself, the pipeline runs on the built in node inside the container"
            }
        }
    }
}
