FROM gutenye/node

COPY package.json /app
RUN npm install
COPY . /app

CMD [ "npm", "start" ]
