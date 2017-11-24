FROM httpd

RUN mkdir /app
WORKDIR /app
RUN apt update && apt install -y apt-utils && \
    apt install -y vim build-essential curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt install -y nodejs && \
    npm install -g gulp yarn && \
    yarn install

RUN gulp && cp /app/dist /usr/local/apache2/htdocs/
