#riff service delete spring-function
riff function create java function-riff --git-repo https://github.com/eggboy/riff-springcloudfunction.git --artifact "function-0.0.1-SNAPSHOT.jar" --handler "sayHi" --image eggboy/riff-function
