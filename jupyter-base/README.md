###  Jupyter on CentOS 7.x

#### What does it contain?

* CentOS 7.x - Docker hub image [centos:7](https://hub.docker.com/_/centos/)
* Zombie reaping - [smell-baron](https://github.com/ohjames/smell-baron)
* Basic Python 2.7 - `python2-pip` from `epel-release`
* Basic Python 3.6 - `python36u`, `python36u-pip` from `ius`
* Build tools - `python-devel`, `python36u-devel` & yum group `Development Tools`
* User `jupyter` with `UID 1000`, `GID 1000`
* Folder `/usr/local` owned by `jupyter` user
* Folder `/usr/local/lib` added in `LD_LIBRARY_PATH`
* Base container for Jupyter runtime

#### Sample use at

- Docker hub image [centosd/jupyter-py3](https://hub.docker.com/r/centosd/jupyter-py3/) - source [here](https://github.com/centosd/centos-jupyter/tree/master/jupyter-py3)
- Docker hub image [centosd/jupyter-scipy](https://hub.docker.com/r/centosd/jupyter-scipy/) - source [here](https://github.com/centosd/centos-jupyter/tree/master/jupyter-scipy)

#### Sample `Dockerfile`

from [centosd/jupyter-py3](https://hub.docker.com/r/centosd/jupyter-py3/)

```
FROM centosd/jupyter-base

# ports exposed
EXPOSE 8080

# volumes
VOLUME ["/home/jupyter/work"]

# daemon owner
USER jupyter

# daemon workdir
WORKDIR /home/jupyter/work

# init - zombie reaping
ENTRYPOINT ["/bin/smell-baron"]

# launch command
CMD ["/scripts/wrapper/launch.sh"]
```

#### TODO

Add support for JupyterHub.

Cheers,
