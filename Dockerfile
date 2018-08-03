FROM registry.access.redhat.com/rhscl/nodejs-8-rhel7

USER root

RUN sed -i 's/npm install/npm install \&\& npm run build/' $STI_SCRIPTS_PATH/assemble

USER 1001
