# mkdocs-material-plantuml-docker-example

Example usage of [upamune/mkdocs-material-plantuml-docker](https://github.com/upamune/mkdocs-material-plantuml-docker).

## Build

```bash
$ make build
INFO     -  Cleaning site directory
INFO     -  Building documentation to directory: /docs/site
INFO     -  Documentation built in 1.26 seconds
```

## Serve

```bash
$ make serve
INFO     -  Building documentation...
WARNING  -  Config value: 'dev_addr'. Warning: The use of the IP address '0.0.0.0' suggests a production environment or the use of a proxy to connect to the MkDocs server. However, the MkDocs' server is intended for local development purposes only. Please use a third party production-ready server instead.
INFO     -  Cleaning site directory
INFO     -  Documentation built in 0.85 seconds
INFO     -  [11:52:30] Serving on http://0.0.0.0:8000/
```
