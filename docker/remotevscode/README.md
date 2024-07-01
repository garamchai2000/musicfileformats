# Editing Python code remotely with Visual Studio Code
###### build image
    docker build --tag sshserver_image .

###### run container
    docker run -d -p 2200:22 --name ubuntuserver sshserver_image
 
###### test ssh to the container works
    ssh -v vsuser@localhost -p 2200
