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
Browse to http://localhost:8080
![Keycloak landing](https://github.com/DemocracyOS/keycloak/img/kc_1.png)

Login with user: keycloak and password: keycloak
![Keycloak login](https://github.com/DemocracyOS/keycloak/img/kc_2.png)

IMPORTANT STEP: configure DemocracyOS theme for the default realm!
![Keycloak theme configuration](https://github.com/DemocracyOS/keycloak/img/kc_3.png)

#### Customize DemocracyOS theme
Themes are built with [Apache FreeMarker](https://freemarker.apache.org/).
