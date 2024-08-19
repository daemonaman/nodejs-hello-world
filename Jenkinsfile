pipeline {
        agent any
        stages {
                stage ("pull code from bitbucket repo"){
                        steps{
                git branch: 'main', credentialsId: 'jenkins', url: 'git@bitbucket.org:hypersagetechnology/kidtryz-admin-web.git'
                        }
                }
               
            
                stage ("Building docker image"){
                        steps{
                                sh 'sudo docker build -t rahul9664/admin-web:latest .'
                        }
                }
                stage ("Push on Docker-Hub"){
                        steps{
                                withCredentials([string(credentialsId: 'docker_hub', variable: 'docker_passwd')]) {
                                        sh 'sudo docker login -u rahul9664 -p ${docker_passwd}'
                                        sh 'sudo docker push rahul9664/admin-web'
                                }
                        }
                }
                stage ("Testing the Build"){
                        steps{
                                sh 'sudo docker run -dit --name admin-web -p 3000:3000 rahul9664/admin-web:latest'
                        }
                }
        }
