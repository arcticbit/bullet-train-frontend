FROM node:10

WORKDIR /frontend

RUN git clone \
  --branch 1.9 \
  https://github.com/SolidStateGroup/bullet-train-frontend.git \
  .

RUN npm install

EXPOSE 8080

CMD [ "npm", "run", "dev" ]
