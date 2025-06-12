FROM node:lts-buster
RUN git clone https://github.com/2voldigo/VOLDIGO-MD/root/2voldigo
WORKDIR /root/2voldigo
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
