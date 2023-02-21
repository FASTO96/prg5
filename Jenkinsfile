pipeline {
    agent {
        label "myafe"
    }
environment{
    DHC = credentials('dockerhub')
    
}
    stages {
        stage('git') {
            steps {
             checkout  scm
            }
        }
        
        
        stage('build') {
            steps {
                sh 'docker build -t sab22/php4:$BUILD_NUMBER .'
            }
        }        

        stage('login dockerhub') {
            steps {
                sh 'echo $DHC_PSW | docker login -u $DHC_USR --password-stdin'
            }
        }

        
        stage('push') {
            steps {
                sh 'docker push sab22/php4:$BUILD_NUMBER'
            }
        }


        stage('edit depl') {
            steps {
                sh "ansible-playbook apb.yaml --extra-vars 'v=$BUILD_NUMBER'"
            }
        }
        
        
        
    }
}
