FROM        ghcr.io/pterodactyl/yolks:java_16

USER        root
RUN         apt install -y curl unzip

ENV         JMODS_DIR=/usr/lib/jvm/java-17-openjdk-amd64/jmods
ENV         JMODS_URL=https://download2.gluonhq.com/openjfx/17.0.0.1/openjfx-17.0.0.1_linux-x64_bin-jmods.zip

RUN         curl -L ${JMODS_URL} -o openjfx.zip \
            && unzip openjfx.zip && rm openjfx.zip \
            && mkdir -p ${JMODS_DIR} \
            && cp javafx-jmods-17.0.0.1/* ${JMODS_DIR} && rm -r ${JMODS_DIR}
            
USER        container
            
CMD         [ "/bin/bash", "/entrypoint.sh" ]
