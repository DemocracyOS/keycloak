FROM jboss/keycloak:4.4.0.Final
MAINTAINER aaraujo@protonmail.ch

COPY base_templates /opt/jsboos/keycloak/themes/base
COPY democracyos /opt/jboss/keycloak/themes/democracyos
COPY customization/standalone.xml /opt/jboss/keycloak/standalone/configuration/
COPY customization/standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/
