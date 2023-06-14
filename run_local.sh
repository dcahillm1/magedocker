#!/bin/bash

# Execute application code
python3 main.py

# Run the docker container

docker run -it -p 6789:6789 -v $(pwd):/home/src mageai/mageai \
  /app/run_app.sh mage start magedocker