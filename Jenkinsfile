pipeline {
    agent any
    
    stages {
        stage('Clonar repositório') {
            steps {
                git(url: 'https://github.com/sarahdfweb/teste-e2e-ci.git', branch: 'main')
            }
        }
        
        stage('Instalar dependências') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Executar testes') {
            steps {
                sh 'npm test'
            }
        }
    }
    
    post {
        always {
            // Etapas a serem executadas sempre, independentemente do resultado
            echo 'Concluído o processo de integração contínua.'
        }
        
        success {
            // Etapas a serem executadas apenas se a construção for bem-sucedida
            echo 'A integração foi bem-sucedida. Parabéns!'
        }
        
        failure {
            // Etapas a serem executadas somete se a construção falhar
            echo 'A integração falhou. Verifique os logs para obter mais informações.'
        }
    }
}
