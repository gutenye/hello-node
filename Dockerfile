FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

COPY package.tgz /tmp
RUN ["/bin/bash", "-c", "tar -xvf /tmp/package.tgz -C"]
RUN cp /tmp/boot-api.war /usr/local/tomcat/webapps/tmp

COPY package.json /app
RUN npm install
COPY . /app

EXPOSE 80
CMD [ "npm", "start" ]
