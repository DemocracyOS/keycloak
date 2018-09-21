# DemocrayOS Keycloak Theme
This repository holds a [Keycloak](https://www.keycloak.org/) theme currently in development stage at [DemocracyOS](http://democracyos.org/).

## Getting Started
---
#### Clone this repo
```bash
$ git clone https://github.com/DemocracyOS/keycloak
```

#### Start Docker Compose
```bash
$ sudo docker-compose up -d
```

#### Access Keycloak
Browse to http://localhost:8080 and go to Administration Console
![Keycloak landing](https://raw.githubusercontent.com/DemocracyOS/keycloak/master/img/kc_1.png)

Login with user: keycloak and password: keycloak
![Keycloak login](https://raw.githubusercontent.com/DemocracyOS/keycloak/master/img/kc_2.png)

IMPORTANT STEP: configure DemocracyOS theme for the default realm!
![Keycloak theme configuration](https://raw.githubusercontent.com/DemocracyOS/keycloak/master/img/kc_3.png)

## Customize DemocracyOS theme
Themes are built with [Apache FreeMarker](https://freemarker.apache.org/). This keycloak docker installation is configured to instantly reflect changes in theme files for development purposes. More on this in the [Official Documentation](https://www.keycloak.org/docs/3.2/server_development/topics/themes.html).

#### Theme specific files
DemocracyOS theme files are inside `democracyos/` directory, these are mostly css and js resources. This directory is mounted with Docker in `keycloak/themes/democracyos`.

#### Base template files
Keycloak themes make use of base template files. In this repository they are located inside `base_templates/` directory which in turn is then mounted with Docker in `keycloak/themes/base`.
