FROM gutenye/node

COPY package.json /app
RUN npm install
COPY . /app

EXPOSE 80
#CMD ["node", "app.js"]
CMD [ "node", "/app/node_modules/babel-cli/lib/_babel-node", "app.js" ]
