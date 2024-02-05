# Dockerfiles

This repository contains Dockerfiles for various GUI applications that can be run inside containers.

## Overview

Each Dockerfile in this repository creates a Docker image with all the necessary dependencies for the corresponding project.

## Usage

### Installing the X Server.
#### Windows:

Download and install the X Server from here https://sourceforge.net/projects/xming/?source=dlp and configure the X Server. Note the Display number while configuring the XLaunch.


### Building the Docker image.

To build a Docker image from a Dockerfile, rename the file from something.Dockerfile to Dockerfile. Lets say for example, for building intellij replace the filename from intellij.Dockerfile to Dockerfile and build it.

```bash
docker build -t <image-name>:<tag-name> .
```

### Running the container.

After building the image execute the command 

```bash
docker run --env DISPLAY=host.docker.internal:<display-number> -it -d --name <Container-Name>  <image-name>:<tag-name>
```
Done!!!