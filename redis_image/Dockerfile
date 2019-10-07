# use existing image as base
FROM alpine

# download and install dependency
RUN apk add --update redis

# tell image what to do when it starts
CMD ["redis-server"]
