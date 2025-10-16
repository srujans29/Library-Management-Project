FROM node:18-alpine 
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

ENV PORT=5000
ENV MONGO_URI=mongodb://mongo:27017/librarydb
EXPOSE 5000
CMD [ "npm","start" ] 