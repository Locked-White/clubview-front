FROM node:current

EXPOSE 3000
RUN mkdir -p ./app
WORKDIR ./app

COPY . ./
RUN npm install && \
    npm run build

CMD ["npm", "run", "start"]
