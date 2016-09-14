FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

COPY package.tgz /tmp
RUN tar -xf /tmp/package.tgz
RUN npm install

EXPOSE 80
CMD [ "npm", "start" ]
