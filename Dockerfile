FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

RUN cp package.tgz /tmp
RUN tar -xf /tmp/package.tgz
RUN cp package.json /app
RUN npm install
RUN cp . /app

EXPOSE 80
CMD [ "npm", "start" ]
