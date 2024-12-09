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
                    def container = docker.image('fortune-wheel').run('-p 8080:80')
                    echo container.logs()
                }
            }
        }
    }
}
