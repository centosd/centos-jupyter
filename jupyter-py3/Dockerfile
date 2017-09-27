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
CMD ["/scripts/wrapper/launch.sh"]
