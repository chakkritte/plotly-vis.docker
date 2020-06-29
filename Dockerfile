# Pull base image.
FROM conda/miniconda3

# Set the author
MAINTAINER Chakkrit Termritthikun <chakkritt60@nu.ac.th>

RUN \
  apt-get -q -y update && \
  apt-get -q -y install imagemagick libgl1-mesa-glx xvfb libgtk2.0-0 libgconf-2-4 libgtk-3-0 libxss1 libasound2 && \
  rm -rf /var/lib/apt/lists/*
 
RUN \ 
  conda update -n base -c defaults conda

RUN \ 
  conda install -c conda-forge pandas && \
  conda install -c conda-forge plotly && \ 
  conda install -c conda-forge numpy  && \ 
  conda install -c conda-forge imageio && \ 
  conda install -c conda-forge matplotlib  && \ 
  conda install -c conda-forge scikit-image  && \ 
  conda install -c conda-forge opencv && \
  conda install -c conda-forge tqdm && \
  conda install -c conda-forge psutil && \ 
  conda install -c conda-forge requests && \ 
  conda install -c plotly plotly-orca && \
  conda clean --all --yes

CMD ["/bin/bash"]
