pipeline {
        agent any
        stages {
                stage ("pull code from github"){
                        steps{
               git branch: 'main', url: 'https://github.com/daemonaman/nodejs-hello-world.git'
                        }
                }
               
            
                stage ("Building docker image"){
                        steps{
                                sh 'sudo docker build -t node-hello:latest .'
                        }
                }
                
                stage ("Testing the Build"){
                        steps{
                                sh 'sudo docker run -dit --name admin-web -p 3000:3000 node-hello:latest'
                        }
                }
        }
