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

#### Access H2 development database
Keycloak is setup with a [H2 database engine](http://www.h2database.com/html/main.html) which is acceptable for development purposes. The easiest way to inspect the data is with the built-in H2 web frontend application:

**Start the application**
```bash
# Start the Server, this is a long line
$ echo 'java -cp $(find /opt/jboss -type f -name h2*.jar) org.h2.tools.Server -webAllowOthers' | sudo docker exec keycloak -i /bin/bash - 
``` 

**Browse application**
The application will be available at http://127.0.0.1:8082. It will look like this:

![H2 Web Application](https://raw.githubusercontent.com/DemocracyOS/keycloak/dev-h2database/img/h2-app-1.png)
Input these values to gain access:
```bash
JDBC URL: jdbc:h2:/opt/jboss/keycloak/standalone/data/keycloak;AUTO_SERVER=TRUE
User Name: sa
Password: sa
```

![H2 Web Application](https://raw.githubusercontent.com/DemocracyOS/keycloak/dev-h2database/img/h2-app-2.png)

**Kill application**
After quitting previous `docker exec` command (Ctrl+C) the started java process through bash is not killed, so to kill it with fire:
```bash
# Hackish but working
$ echo "ps -eo pid,args | egrep 'h2.*\.jar' | head -n 1 | awk '{ print \$1 }' | xargs kill" | docker exec -i keycloak /bin/bash -
```  

## Customize DemocracyOS theme
Themes are built with [Apache FreeMarker](https://freemarker.apache.org/). This keycloak docker installation is configured to instantly reflect changes in theme files for development purposes. More on this in the [Official Documentation](https://www.keycloak.org/docs/3.2/server_development/topics/themes.html).

#### Theme specific files
DemocracyOS theme files are inside `democracyos/` directory, these are mostly css and js resources. This directory is mounted with Docker in `keycloak/themes/democracyos`.

#### Base template files
Keycloak themes make use of base template files. In this repository they are located inside `base_templates/` directory which in turn is then mounted with Docker in `keycloak/themes/base`.
