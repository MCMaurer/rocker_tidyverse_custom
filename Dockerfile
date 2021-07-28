FROM rocker/tidyverse:latest

# the .config directory was downloaded to input through a mounted volume after modification in a running container
# at that point, I copied over some of the necessary text from my local .config/rstudio into the correct files in input/.config
# I also created a themes/ directory and added my custom theme in there
COPY .config /home/rstudio/.config

COPY .Rprofile /home/rstudio/
