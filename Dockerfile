FROM python:3.12.3-bullseye
RUN apt-get update -qqy && apt-get dist-upgrade -yq
RUN /bin/sh -c set -eux; pip install twine==5.0.0
ENTRYPOINT ["python3", "-m", "twine"]
