FROM node AS base

ENV PATH="node_modules/.bin:$PATH"

# all the external dependencies go here

WORKDIR /var/app


FROM base AS install

# any local app installs go here

COPY . .
RUN npm install
