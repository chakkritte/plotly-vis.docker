# Pull base image.
FROM ubuntu:18.04.4

# Set the author
MAINTAINER Chakkrit Termritthikun <chakkritt60@nu.ac.th>

RUN \
  apt-get -q -y update && \
  apt-get -q -y install xvfb libgtk2.0-0 libgconf-2-4 python3 python3-dev python3-pip && 
 
RUN \ 
  pip install pandas plotly numpy imageio matplotlib scikit-image opencv-python tqdm
  
CMD ["/bin/bash"]
