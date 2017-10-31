FROM centosd/jupyter-py3

# add stuff, running as user jupyter
RUN source /opt/jupyter/bin/activate && pip3 install --no-cache-dir \
	pandas matplotlib \
	numpy scipy scikit-learn \
	tensorflow jupyter-tensorboard tflearn keras 
