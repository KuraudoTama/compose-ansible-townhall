FROM ansible/ubuntu14.04-ansible
ADD . /townhall
WORKDIR /townhall
RUN git clone https://github.com/KuraudoTama/ansible-townhall.git 
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN mkdir -p /etc/ansible/job_logging
RUN bash townhall.sh
WORKDIR ansible-townhall
RUN pip install -r requirements.txt
CMD python runserver.py
