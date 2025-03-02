FROM node:10-alpine

RUN npm cache clean --force && \
	npm config set strict-ssl false && \
	apk add wget unzip && \
	wget --no-check-certificate https://github.com/6DammK9/gremlin-visualizer/archive/master.zip && \
	unzip master.zip && \
	cd gremlin-visualizer-master && \
	npm install

EXPOSE 4104 4105

WORKDIR /gremlin-visualizer-master

CMD npm start
