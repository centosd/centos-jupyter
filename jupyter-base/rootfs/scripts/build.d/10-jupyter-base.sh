
yum install -y epel-release
yum install -y https://centos7.iuscommunity.org/ius-release.rpm

yum groupinstall -y 'Development Tools'
yum install -y python36u python-devel python36u-devel python2-pip python36u-pip

ln /usr/bin/pip3.6 /usr/bin/pip3

pip2 install --no-cache-dir --upgrade pip
pip3 install --no-cache-dir --upgrade pip

adduser jupyter
chown -R jupyter.jupyter /usr/local

### install jupyter
su jupyter -c 'pip3 install --no-cache-dir --user jupyter && pip2 install --no-cache-dir --user ipykernel && python2 -m ipykernel install --user'

### setup basic configuration file
mkdir -p ~jupyter/.jupyter ~jupyter/work

cat > ~jupyter/.jupyter/jupyter_notebook_config.py << '__EOF__'
import os

# Set a password if PASSWORD is set
if 'PASSWORD' in os.environ:
    if os.environ['PASSWORD'] != '' :
        from IPython.lib import passwd
        c.NotebookApp.password = passwd(os.environ['PASSWORD'])
    del os.environ['PASSWORD']
    # Disnable 'token' based authentication
    c.NotebookApp.token = u''

# else default to the token based authentication

__EOF__

chown -R jupyter.jupyter ~jupyter
