FROM centosd/jupyter-base

# ports exposed
EXPOSE 8080

# volumes
VOLUME ["/home/jupyter"]

# daemon owner
USER jupyter

# daemon workdir
WORKDIR /home/jupyter

# init - zombie reaping
ENTRYPOINT ["/bin/smell-baron"]

# launch command
CMD ["/bin/bash", "-c", "VIRTUAL_ENV_DISABLE_PROMPT=true && source /opt/jupyter/bin/activate && exec jupyter notebook --no-browser --ip=0.0.0.0 --port=8080"]
