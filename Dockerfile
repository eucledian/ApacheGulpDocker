FROM httpd
RUN apt updapte && apt install -y vim build-essential curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt install -y nodejs && \
    npm install -g gulp yarn && \
    yarn install
