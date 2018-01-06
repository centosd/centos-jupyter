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
