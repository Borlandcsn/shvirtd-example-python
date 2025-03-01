#!/bin/bash
mkdir opt
cd opt
git clone https://github.com/Borlandcsn/shvirtd-example-python.git
cd shvirtd-example-python
docker compose up -d
