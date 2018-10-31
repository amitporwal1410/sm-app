node {
  try {
    stage('Checkout') {
      checkout scm
    }
    stage('Environment') {
      sh 'git --version'
      echo "Branch: ${env.BRANCH_NAME}"
      sh 'docker -v'
      sh 'printenv'
    }
    stage('Build Docker'){
     sh 'docker build -t myc .'
    }
    stage('Docker run'){
      sh 'docker run -d -p 80:80 myc:latest'
    }
    stage('Docker test'){
      sh 'myfile.sh'
    }
  }
  catch (err) {
    throw err
  }
}

