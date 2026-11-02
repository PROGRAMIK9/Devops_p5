#build stage development
FROM node:18-slim AS build

WORKDIR /app

COPY package.json package-lock.json .

RUN npm install


#prod stage
FROM node:18-slim AS prod

WORKDIR /app

COPY --from=build/app .

EXPOSE 3000

CMD ["node", "app.js"]