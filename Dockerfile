FROM v0.10.41
RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/yathishmohan/AatmaaniProject.git

WORKDIR /AatmaaniProject/nodewebsite/express-website
RUN npm install -g express
RUN npm install -g express-generator
RUN npm install
RUN npm install --save nodemailer
ENTRYPOINT npm start
EXPOSE 3000
