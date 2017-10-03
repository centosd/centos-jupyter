###  Jupyter (Python3-scipy) on CentOS 7.x

Jupyter runtime with Python 3.4 & many popular scientific packages.

Please STAR if you like it :-)

#### What does it contain?

From [centosd/jupyter-base](https://hub.docker.com/r/centosd/jupyter-base/)

* CentOS 7.x - Docker hub image [centos:7](https://hub.docker.com/_/centos/)
* Zombie reaping - [smell-baron](https://github.com/ohjames/smell-baron)
* Basic Python 3.4 - `python34`, `python34-pip` from `epel-release`
* Build tools - `python34-devel` & yum group `Development Tools`
* User `jupyter` with `UID 1000`, `GID 1000`
* Virtualenv `jupyter` at `/opt/jupyter`, owned by `jupyter` user
* Folder `/usr/local` owned by `jupyter` user
* Folder `/usr/local/lib` added in `LD_LIBRARY_PATH`

From [centosd/jupyter-py3](https://hub.docker.com/r/centosd/jupyter-py3/)

* Port `8080`
* Mount point `/home/jupyter`
* Launch service as user `jupyter`

From [centosd/jupyter-scipy](https://hub.docker.com/r/centosd/jupyter-scipy/)

* `pandas` `matplotlib`
* `numpy` `scipy` `scikit-learn`
* `tensorflow` `tflearn` `keras`
* and their dependencies...

#### Usage

**Token based security** (default)
`docker run -d -it --name=my-jupyter-scipy -p 8080:8080 centosd/jupyter-scipy`
Get token from log output
`docker logs my-jupyter-scipy`

**No security**
`docker run -d -it --name=my-jupyter-scipy -e PASSWORD="" -p 8080:8080 centosd/jupyter-scipy`

**Password security**
`docker run -d -it --name=my-jupyter-scipy -e PASSWORD="your_password" -p 8080:8080 centosd/jupyter-scipy`

And then browse to `http://docker_host_ip:8080/`

#### TODO

Add support for JupyterHub.

Cheers,