pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Shadhanah-Rajan/fortune-wheel.git' // Replace with your repo
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('fortune-wheel-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('fortune-wheel-app').run('-p 8080:80')
                }
            }
        }
    }
}
