FROM node:8

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

# cleanup previous artifcats
RUN rm -rf build

# install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -yy -qq


COPY yarn.lock package.json ./

# Install dependencies
RUN yarn install --pure-lockfile --ignore-scripts

COPY . ./