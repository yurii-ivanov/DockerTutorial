# base image
FROM node:9.6.1

# install chrome for protractor tests
# RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# RUN apt-get update && apt-get install -yq google-chrome-stable

# set working directory
WORKDIR /usr/typ

# install and cache app dependencies
COPY package.json .
RUN npm install
#RUN npm install -g @angular/cli

# add app
COPY . /usr/typ
RUN ls

#EXPOSE 49153

# start app
CMD ["npm", "start"]
#CMD ng serve --host 0.0.0.0