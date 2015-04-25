# SciTE builder for Ubuntu 16.04

1. `docker build -t scite .`
2. `docker run -v ${PWD}/data:/data --rm scite 4.0.0`
3. `sudo dpkg -i data/scite_4.0.0-1_amd64.deb`
