# mkdocs-material-plantuml-docker-example

[![Netlify Status](https://api.netlify.com/api/v1/badges/7c921e50-4654-464c-84f7-c961b5be224b/deploy-status)](https://app.netlify.com/sites/mkdocs-material-plantuml-docker-example/deploys)

Example usage of [upamune/mkdocs-material-plantuml-docker](https://github.com/upamune/mkdocs-material-plantuml-docker).

## Build

```bash
$ make docs/build
INFO     -  Cleaning site directory
INFO     -  Building documentation to directory: /docs/site
INFO     -  Documentation built in 1.26 seconds
```

## Serve

```bash
$ make docs/serve
INFO     -  Building documentation...
WARNING  -  Config value: 'dev_addr'. Warning: The use of the IP address '0.0.0.0' suggests a production environment or the use of a proxy to connect to the MkDocs server. However, the MkDocs' server is intended for local development purposes only. Please use a third party production-ready server instead.
INFO     -  Cleaning site directory
INFO     -  Documentation built in 0.85 seconds
INFO     -  [11:52:30] Serving on http://0.0.0.0:8000/
```
