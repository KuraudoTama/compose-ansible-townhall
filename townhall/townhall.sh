#!/usr/bin/env bash

# ansible.cfg
mkdir -p /usr/share/ansible/plugins/callback
cp -f /opt/ansible/ansible/examples/ansible.cfg /etc/ansible/ansible.cfg
sed -i "s|#callback_plugins|callback_plugins|" /etc/ansible/ansible.cfg
cp -f /townhall/ansible-townhall/job_service/ansible_logger_plugin.py /usr/share/ansible/plugins/callback/

# ansible-playbook
ln -s `which ansible-playbook` -t /usr/bin
