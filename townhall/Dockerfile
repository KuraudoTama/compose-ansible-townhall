FROM ansible/ubuntu14.04-ansible
ADD . /townhall
WORKDIR /townhall
RUN git clone https://github.com/KuraudoTama/ansible-townhall.git
RUN bash townhall.sh
WORKDIR ansible-townhall
RUN pip install -r requirements.txt
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN source ~/.bashrc
CMD python runserver.py