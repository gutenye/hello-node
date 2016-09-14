FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

COPY package.tgz /tmp
RUN tar -xf /tmp/package.tgz -C /tmp
WORKDIR /tmp
RUN pwd
RUN ls
RUN ls /tmp
COPY package.json /app
RUN npm install
COPY . /app

EXPOSE 80
CMD [ "npm", "start" ]
