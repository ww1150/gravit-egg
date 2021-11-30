#
# Copyright (c) 2021 Matthew Penner
# Copyright (c) 2021 MeProject Studio contributors
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# 

FROM        ghcr.io/pterodactyl/yolks:java_16

LABEL       author="Matthew Penner. MeProject Studio contributors." maintainer="support@meproject.ru"

LABEL       org.opencontainers.image.source="https://github.com/MeProject-Studio/gravit-yolk"
LABEL       org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.description="This Yolk is made for Pterodactyl panel as part of GravitLauncher Egg. Based on official Pterodactyl yolk for Java"

USER        root
RUN         apt install -y curl unzip

ENV         JMODS_DIR=/usr/share/openjfx/jmods
ENV         JMODS_URL=https://download2.gluonhq.com/openjfx/16/openjfx-16_linux-x64_bin-jmods.zip

RUN         curl -L ${JMODS_URL} -o openjfx.zip \
            && unzip openjfx.zip && rm openjfx.zip \
            && mkdir -p ${JMODS_DIR} \
            && cp javafx-jmods-16/* ${JMODS_DIR} && rm -r javafx-jmods-16/
            
USER        container
            
CMD         [ "/bin/bash", "/entrypoint.sh" ]
