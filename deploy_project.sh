##!/bin/bash

mrdir opt

cd opt/

git clone https://github.com/Borlandcsn/shvirtd-example-python.git

cd shvirtd-example-python

sudo docker compose up -d
