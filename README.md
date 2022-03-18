podman-docker-image
===================

Introduction
------------
This projects mirrows the Docker image ```docker://quay.io/podman/stable:latest```
and republishes it on Dockerhub under ```opendevopsrepo/podman/stable:latest```.


How to fork this repo and its automatic CI builds
-------------------------------------------------
* have a GitHub.com and a hub.docker.com account ready
* fork this git repo into your own GitHub.com repo
* create an hub.docker.com access token (https://hub.docker.com/settings/security)
* set this hub.docker.com access token in your GitHub.com repo Settings/Security/Secrets/Actions (https://github.com/your-GitHub.com-username/your-GitHub.com-repo-name/settings/secrets/actions)
    * set DOCKERHUB_USERNAME={your hub.docker.com user name}
    * set DOCKERHUB_TOKEN={your hub.docker.com access token from above}
* in .github/workflows/github-actions.yml replace tag "opendevopsrepo/jenkins-plugins-collection" with "{your hub.docker.com username}/{your new hub.docker.com repo name}"
* set a Readme text on hub.docker.com (https://hub.docker.com/repository/docker/your-hub.docker.com-username/your-new-hub.docker.com-repo-name/general)

After this setup, every push to "main" branch in your GitHub.com repo should trigger a CI build that uploads the docker image to your hub.docker.com repo.

