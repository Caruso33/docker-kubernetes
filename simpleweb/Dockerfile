FROM alpine 
# alternative is node:alpine with node preinstalled;
# alpine means stripped down to bare minimum

WORKDIR /usr/app
# in future copy files there

RUN apk add --upgrade nodejs npm

COPY ./package.json ./ 
# otherwise no access to local files
# only package here, as otherwise we loose caching when editing any file
# instead of only when npm dependencies change

RUN npm install

COPY ./ ./

CMD ["npm", "start"]
