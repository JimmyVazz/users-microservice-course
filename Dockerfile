FROM node:18
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT=3001
ENV MONGO_URI=mongodb+srv://DanielRmzDev:wIDaa2zBaLnU0eaq@microservicescourse.s2e0cev.mongodb.net/?retryWrites=true&w=majority&appName=MicroServicesCourse
EXPOSE 3001

CMD ["npm", "start"]