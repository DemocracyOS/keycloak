FROM jboss/keycloak:4.4.0.Final
MAINTAINER aaraujo@protonmail.ch

ADD democracyos /opt/jboss/keycloak/themes/democracyos
ADD customization/standalone.xml /opt/jboss/keycloak/standalone/configuration/
ADD customization/standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/
