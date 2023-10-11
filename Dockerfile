FROM node:18-alpine

WORKDIR /react-app-docker/

COPY public/ /react-app-docker/public
COPY src/ /react-app-docker/src
COPY package.json /react-app-docker/
COPY index.html /react-app-docker/
COPY postcss.config.cjs /react-app-docker/
COPY tailwind.config.cjs /react-app-docker/
COPY tsconfig.json /react-app-docker/
COPY tsconfig.node.json /react-app-docker/
COPY vite.config.js /react-app-docker/

RUN yarn 

RUN yarn add typescript --dev

EXPOSE 5173

CMD [ "npm", "run", "dev" ]