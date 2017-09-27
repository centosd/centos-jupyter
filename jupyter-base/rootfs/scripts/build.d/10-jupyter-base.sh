
yum install -y epel-release
yum install -y python34 python34-pip

#yum groupinstall -y 'Development Tools'
#yum install -y python34-devel

pip3 install --no-cache-dir --upgrade pip
pip3 install --no-cache-dir virtualenv

### setup virtualenv for jupyter 
virtualenv /opt/jupyter

adduser jupyter
chown -R jupyter.jupyter /opt/jupyter

### install jupyter

su jupyter -c 'source /opt/jupyter/bin/activate && pip3 install --no-cache-dir jupyter'

### setup basic configuration file
mkdir -p ~jupyter/.jupyter

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

chown -R jupyter.jupyter ~jupyter/.jupyter
