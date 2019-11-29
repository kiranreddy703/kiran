node {
    stage ('checkout'){
        git 'https://github.com/kiranreddy703/kiran.git'
    }
    stage('Mvn package'){
        def mvnHome = tool name: 'maven-3', type: 'maven'
        def mvnCMD = "${mvnHome}/bin/mvn"
        sh "${mvnCMD} clean package"
    }
    stage('Build docker image'){
        sh 'docker build -t kiranreddy503/kiran:2.4.0 .'
    }
    stage('Push Docker Image'){
        withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerhub')]) {
            sh "docker login -u kiranreddy503 -p ${dockerhub}"
        }
        sh 'docker push kiranreddy503/kiran:2.4.0'
    }
}
