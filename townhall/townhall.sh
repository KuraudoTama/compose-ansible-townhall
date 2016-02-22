#!/usr/bin/env bash

# PYTHONPATH
echo "PYTHONPATH=$PYTHONPATH:/townhall/ansible-townhall" >> ~/.bashrc

# change db host
sed -i "s|127.0.0.1|mongodb|" /townhall/ansible-townhall/job_persistence/db_connection.py
sed -i "s|localhost|mongodb|" /townhall/ansible-townhall/code_repo/ansible_repo_mgr.py

# ansible.cfg
mkdir -p /usr/share/ansible/plugins/callback
cp -f /opt/ansible/ansible/examples/ansible.cfg /etc/ansible/ansible.cfg
sed -i "s|#callback_plugins|callback_plugins|" /etc/ansible/ansible.cfg
cp -f /townhall/ansible-townhall/job_logging/ansible_job_logger.py /usr/share/ansible/plugins/callback/

# ansible-playbook
ln -s `which ansible-playbook` -t /usr/bin
