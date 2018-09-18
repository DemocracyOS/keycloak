# DemocrayOS keycloak theme development environment

How-To
```bash
$ sudo docker run -d --name keycloak-extract jboss/keycloak:4.0.0.Final 'echo "This is fine"' 
$ sudo docker cp keycloak-extract:/opt/jboss/keycloak/themes .
$ sudo chown -R $UID:$GID themes
$ sudo docker cp keycloak-extract:/opt/jboss/keycloak/standalone/configuration/standalone.xml .
$ sudo chown -R $UID:$GID standalone.xml
$ sed -i 's/<staticMaxAge>.*<\/staticMaxAge>/<staticMaxAge>-1<\/staticMaxAge>/g' standalone.xml
$ sudo docker-compose up
```

Keycloak is then available in http://localhost:8080
