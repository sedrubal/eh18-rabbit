FROM fedora
RUN dnf -y upgrade && dnf -y install npm && dnf clean all && npm -g install yarn
WORKDIR /srv/
ADD ./art.json ./index.html ./package.json ./yarn.lock /srv/
RUN yarn
CMD yarn start
