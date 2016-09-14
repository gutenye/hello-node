FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

RUN ls
COPY package.tgz /tmp
RUN ls /tmp
RUN tar -xvf /tmp/package.tgz
RUN ls
COPY package.json /app
RUN npm install
COPY . /app

EXPOSE 80
CMD [ "npm", "start" ]
