FROM         jayofdoom/docker-ubuntu-14.04
MAINTAINER   Jay Faulkner "jay.faulkner@rackspace.com"

# Install memcached
RUN apt-get update && apt-get install -y memcached

EXPOSE 11211

# Default to 64mb (memcached default). Can be overridden on docker command line.
CMD ["-m 64"]
ENTRYPOINT ["/usr/bin/memcached"]
