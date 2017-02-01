---
maintainer: andrey9kin
---
# yocto-build-container-jenkins-swarm-slave

## Intro
[Jenkins swarm slave](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin) to build Yocto images

## Usage

Run the following command to connect this image as a slave to your Jenkins master. Replace ~/jenkins-slave with directory on the host where you would like to store files.
192.168.99.100:8080 - with the url to your Jenkins master.

```
docker run -d -v ~/jenkins-slave:/var/build/jenkins praqma/yocto-build-container-jenkins-swarm-slave -master 192.168.99.100:8080 -executors 1 -fsroot /var/build/jenkins -labels yocto
```

To see full list of available options run the following

```
docker run --rm praqma/yocto-build-container-jenkins-swarm-slave -h
```
