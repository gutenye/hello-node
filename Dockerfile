FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

RUN tar -xf package.tgz
RUN cp package.json /app
RUN npm install
RUN cp . /app

EXPOSE 80
CMD [ "npm", "start" ]
