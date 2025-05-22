pipeline {

    agent { label 'First' }

    stages {
        stage('Disk Check') {
            steps {
                script {
                    echo "Running disk health check shell script..."
                    sh 'chmod +x disk_health_check.sh'
                    sh './disk_health_check.sh'
                }
            }
        }

        stage ('Archive Report') {
            steps {
                archiveArtifacts artifacts: 'disk_report.txt', onlyIfSuccessful: true
            }
        }
    }
}