#!/bin/bash
mkdir opt
cd opt
git clone https://github.com/Borlandcsn/shvirtd-example-python.git
cd borland
docker compose up -d
