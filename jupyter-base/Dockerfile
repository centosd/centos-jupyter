FROM centos:7
 
# root filesystem
COPY rootfs /
 
# container builder, let 'sh' run it
RUN /bin/bash /scripts/build.sh
 
# launch nothing, let child container decide
 
