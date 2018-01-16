# Removing the cluster, and its associated bridge network
docker rm -f devopsbox-01 devopsbox-02 devopsbox-03 && \
docker network rm devops