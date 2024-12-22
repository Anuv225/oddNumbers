#importing the docker image
FROM openjdk:21

#setting the workdirectory indside the container
#all the commands after this will be executed in this directory
WORKDIR /usr/app

COPY . .

#will be executed on the creation of the container
RUN javac OddNumbers.java

#will be executed on the everytime the container starts
CMD [ "java" ,"OddNumbers" ]


