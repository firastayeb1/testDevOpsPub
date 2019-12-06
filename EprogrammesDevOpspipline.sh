cd /home/slave/jee/testDevOpsPub

#git stash save --keep-index

#git stash drop

git pull

mvn install

cp target/first-webapp-0.0.1-SNAPSHOT.war ../app.war

if [ $(docker ps -a -q) ]
then
	        docker kill $(docker ps -a -q)

		        docker rm $(docker ps -a -q)
			fi

			if [[ $(docker ps -a -q) ]]; then

				    docker kill $(docker ps -a -q)

				        docker rm $(docker ps -a -q)
					fi

					cd ..

					#docker rmi -f firastayeb/server:latest

				docker build -t firastayeb/server . -f /home/slave/jee/Dockerfile

			docker run -d --name server -h server -p 80:8080 firastayeb/server:latest
