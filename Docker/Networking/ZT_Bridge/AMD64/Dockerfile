# Using the base image from Ubuntu
FROM ubuntu

#quick little update right before you run things to make sure you are full up to date.
RUN apt update && apt upgrade -y && apt install gpg curl -y && curl -s https://install.zerotier.com | bash


CMD ["echo","Welcome to the my ZT Bridge container! zerotier-cli is your friend"]