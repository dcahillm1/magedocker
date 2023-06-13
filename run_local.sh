#!/bin/bash

docker run -it -p 6789:6789 -v $(pwd):/home/src mageai/mageai \
  /app/run_app.sh mage start magedocker

# Execute application code
python main.py