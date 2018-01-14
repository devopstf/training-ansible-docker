# Generating ssh key pair 
echo -e "\n" | ssh-keygen -N "" &> /dev/null && \
ssh-agent bash && \
ssh-add ~/.ssh/id_rsa