# Starting up the training cluster
docker network create -d bridge devops && \
docker container run -d --rm -p 2211:22 -v $(pwd):/projects/ansible --network devops --name devopsbox-01 devopsman/devopsbox:dev && \
docker container run -d --rm -p 2222:22 -v $(pwd):/projects/ansible --network devops --name devopsbox-02 devopsman/devopsbox:dev && \
docker container run -d --rm -p 2233:22 -v $(pwd):/projects/ansible --network devops --name devopsbox-03 devopsman/devopsbox:dev
