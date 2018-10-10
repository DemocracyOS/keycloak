# DemocrayOS Keycloak Image
This is [DemocracyOS](http://democracyos.org/) official [Keycloak](https://www.keycloak.org/) Docker image for development. It's based on [Keycloak Official Docker Image](https://hub.docker.com/r/jboss/keycloak/), starting with 4.4.0.Final version.

## Quickstart
---
### Pull this image
```bash
$ sudo docker pull democracyos/keycloak:4.4.0
```

### Start keycloak
```bash
$ sudo docker run -d --name keycloak -p 8080:8080 democracyos/keycloak
```

### Access Keycloak
Browse to http://localhost:8080 and go to Administration Console
![Keycloak landing](https://raw.githubusercontent.com/DemocracyOS/keycloak/master/img/kc_1.png)

Login with user: democracyos and password: democracyos
![Keycloak login](https://raw.githubusercontent.com/DemocracyOS/keycloak/master/img/kc_2.png)

## Customize DemocracyOS theme
---
Themes are built with [Apache FreeMarker](https://freemarker.apache.org/). This keycloak docker installation is configured to instantly reflect changes in theme files for development purposes. More on this in the [Official Documentation](https://www.keycloak.org/docs/3.2/server_development/topics/themes.html).

#### Theme specific files
DemocracyOS theme files are inside `democracyos/` directory, these are mostly css and js resources. This directory is copied with Docker in `keycloak/themes/democracyos`.

#### Base template files
Keycloak themes make use of base template files. In this repository they are located inside `base_templates/` directory which in turn is then copied with Docker in `keycloak/themes/base`.
