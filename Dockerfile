FROM quay.io/podman/stable:latest

WORKDIR /
RUN echo "Hello podman" > /hello_podman.txt

CMD ["/bin/sh", "-c", "cat /hello_podman.txt"]

