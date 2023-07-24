# Use linux base image
FROM ubuntu:20.04

ENV TZ=US \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update

# Install Python + pip 
RUN apt-get install -y \
    python3.9 \
    python3-pip 

# Cmake and Boost are needed for giotto-tda
# RUN apt-get install -y \
    # cmake \
    # libboost-dev

# Set the working directory in the container
WORKDIR /app/shape

# Copy requirements to the working directory
COPY requirements.txt .

# Update pip
RUN pip install --no-cache-dir --upgrade pip

# RUN pip cache purge

# Install the required Python packages
RUN pip install -r requirements.txt

# Expose the Jupyter notebook port
EXPOSE 8888

# Run Jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]