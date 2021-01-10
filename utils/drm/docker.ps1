function Remove-StoppedContainers {  
    docker container rm $(docker container ls -q)
}

function Remove-AllContainers {  
    docker container rm -f $(docker container ls -aq)
}

function Remove-DanglingImages {
    foreach ($id in & docker images -q -f 'dangling=true') { 
        & docker rmi $id 
    }
}