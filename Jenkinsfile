pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Shadhanah-Rajan/fortune-wheel.git' // Replace with your repo
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'sudo docker build -t fortune-wheel .'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    def container = docker.image('fortune-wheel').run('-p 3000:80')
                    sleep 10
                    def status = sh(script: "docker ps | grep fortune-wheel", returnStatus: true)
                    if (staus != 0){
                        error "Container failed to start."
                    }
                }
            }
        }
    }
}
