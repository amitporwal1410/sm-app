node {
  try {
    stage('Checkout') {
      checkout scm
    }
    stage('Environment') {
      sh 'git --version'
      echo "Branch: ${env.BRANCH_NAME}"
      sh 'docker -v'
    }
    stage('Build Docker'){
     sh 'docker build -t myc .'
    }
    stage('Docker run'){
      sh 'docker run -d -p 80:80 myc:latest'
    }
    stage('Docker test'){
      sh 'echo /myfile.sh'
    }
    stage('Clean Docker test'){
      sh 'docker rmi sm-app'
    }
  }
  catch (err) {
    throw err
  }
}
