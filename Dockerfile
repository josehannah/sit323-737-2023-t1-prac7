FROM node:16

# Create app directory
WORKDIR /Users/josephinehannah/Desktop/University/FINAL YEAR/SIT323/OnTrack/7.1P/website

# Install app dependencies
# A wildcard is used to ensure botch package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY index.js .

EXPOSE 3000
CMD ["node", "index.js"]