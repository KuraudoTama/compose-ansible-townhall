#!/usr/bin/env bash

# PYTHONPATH
echo "PYTHONPATH=$PYTHONPATH:/townhall/ansible-townhall" >> ~/.bashrc

# ansible.cfg
mkdir -p /usr/share/ansible/plugins/callback
cp -f /opt/ansible/ansible/examples/ansible.cfg /etc/ansible/ansible.cfg
sed -i "s|#callback_plugins|callback_plugins|" /etc/ansible/ansible.cfg
cp -f /townhall/ansible-townhall/job_logging/ansible_job_logger.py /usr/share/ansible/plugins/callback/

# ansible-playbook
ln -s `which ansible-playbook` -t /usr/bin
