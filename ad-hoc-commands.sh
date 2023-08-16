# ----------VARS
userid=$(whoami)
homedir=/home/$userid/repos/media-stack
# ----------Instance IP's
master_node=192.168.0.24
worker_node_1=192.168.0.16
worker_node_2=192.168.0.19
# --------------------------------------------------------------------

cd ansible_provisioning && ansible master_node -m ansible.builtin.shell -a 'echo test' \
    --extra-vars "ssh_port=2002 \
    master_node=$master_node  \
    worker_node_1=$worker_node_1 \
    worker_node_2=$worker_node_2  \  
    homedir=$homedir \
    user_id=$userid  \
    PUB_IP=$public_ip \
    ssh_user=james \
    ansible_sudo_pass="

