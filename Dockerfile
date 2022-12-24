# Docker fill running npm nodejs
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Copy TS config for build options
COPY tsconfig.json ./

RUN npm install
RUN npm ci --only=production

# Bundle app source
COPY dist ./dist

EXPOSE 3000
CMD [ "node", "dist/main.js" ]