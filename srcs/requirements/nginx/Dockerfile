FROM alpine:3.13

RUN apk update
RUN apk add nginx

RUN mkdir -p /run/nginx

# Pour faire tourner le container, utilisation d'un daemon (nginx)
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80