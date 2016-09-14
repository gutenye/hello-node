FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

RUN tar -xvf package.tgz
COPY package.json /app
RUN npm install
COPY . /app

EXPOSE 80
CMD [ "npm", "start" ]
