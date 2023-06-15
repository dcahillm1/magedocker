#!/bin/bash

# Execute application code
python3 main.py

#Update mage version to use latest:

docker pull mageai/mageai:latest

# Run the docker container

docker run -it -p 6789:6789 -v $(pwd):/home/src mageai/mageai:latest \
  /app/run_app.sh mage start magedocker