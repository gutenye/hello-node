FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

RUN ls
RUN tar -xvf package.tgz
RUN ls
COPY package.json /app
RUN npm install
COPY . /app

EXPOSE 80
CMD [ "npm", "start" ]
