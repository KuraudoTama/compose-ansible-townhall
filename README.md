Run Ansible-Townhall in Docker with Docker-Compose
==================================================

Assuming you've already installed [Docker](https://docs.docker.com/engine/installation)
and [Docker Compose](https://docs.docker.com/compose/install/)
(or [Docker Toolbox](https://www.docker.com/docker-toolbox)), then checkout and run:

```bash
$ cd /to/your/path
$ git clone https://github.com/KuraudoTama/compose-ansible-townhall.git
$ cd compose-ansible-townhall
$ docker-compose up -d
```

To stream log output, simply run:

```bash
$ docker-compose logs
```
