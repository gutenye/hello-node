#FROM gutenye/node
FROM registry-internal.cn-hangzhou.aliyuncs.com/gutenye/node

RUN pwd
RUN ls
RUN echo 1 > a.txt
RUN cat a.txt
RUN echo 1 > /root/a.txt
RUN cat /root/a.txt
COPY a.txt b.txt

#COPY package.tgz /tmp
#RUN tar -xf /tmp/package.tgz -C /tmp
#WORKDIR /tmp
#RUN pwd
#RUN ls
#RUN ls /tmp
#COPY package.json /app
#RUN npm install
#COPY . /app

EXPOSE 80
CMD [ "npm", "start" ]
