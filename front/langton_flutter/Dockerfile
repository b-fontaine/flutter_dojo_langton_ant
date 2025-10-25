FROM debian:latest

# install all needed stuff
RUN apt-get update
RUN apt-get install -y curl git unzip

ARG FLUTTER_VERSION=stable

# define variables
ENV FLUTTER_SDK=/usr/local/flutter
ENV APP=/app

#clone flutter
RUN git clone -b $FLUTTER_VERSION https://github.com/flutter/flutter.git $FLUTTER_SDK

# setup the flutter path as an enviromental variable
ENV PATH="$FLUTTER_SDK/bin:$FLUTTER_SDK/bin/cache/dart-sdk/bin:${PATH}"
ENV TAR_OPTIONS="--no-same-owner"

# Start to run Flutter commands
# doctor to see if all was installes ok
RUN flutter doctor -v

# setup website folder as the working directory
WORKDIR $APP/

# precache web
RUN flutter precache --web

# expose ports
EXPOSE 80

# run the app
CMD ["flutter", "run", "-d", "web-server", "--web-hostname", "0.0.0.0", "--web-port", "80", "--hot"]
