#!/bin/bash

docker build -t rocker-tidyverse-custom .

open http://localhost:8787

docker run -e PASSWORD="$1" -p 8787:8787 -v "$(pwd)"/output:/home/rstudio/output rocker-tidyverse-custom
