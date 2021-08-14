FROM ghcr.io/upamune/mkdocs-material-plantuml:v0.0.2 AS builder

COPY ./docs /docs/docs
COPY ./mkdocs.yml /docs

RUN mkdocs build

FROM nginx:1.21.1-alpine

COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /docs/site /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
