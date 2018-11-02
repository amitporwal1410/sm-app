node {
  try {
    stage('Checkout') {
      checkout scm
    }
    stage('Environment') {
      bat 'git --version'
      echo "Branch: ${env.BRANCH_NAME}"
      bat 'docker -v'
    }
    stage('Build Docker'){
     bat 'docker build -t myc .'
    }
    stage('Docker run'){
      bat 'docker run -d -p 80:80 myc:latest'
    }
    stage('Docker test'){
      bat 'echo /myfile.sh'
    }
    stage('Clean Docker test'){
      bat 'docker rmi sm-app'
    }
  }
  catch (err) {
    throw err
  }
}
