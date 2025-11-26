# 1. Use the Jupyter minimal-notebook as the base image
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# 2. Copy the conda lock file (generated earlier) into the container
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# 3. Install the conda packages using the lock file
RUN conda install --yes --name base --file /tmp/conda-linux-64.lock
