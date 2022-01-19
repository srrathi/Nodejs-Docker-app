FROM node:16
WORKDIR /app
COPY package.json .
# RUN npm install
# TO AVOID DEV DEPENDENCIES FROM INSTALLING IN PRODUCTION WE ARE PASSING NODE_ENV ARGUMENT

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

COPY . ./
ENV PORT 5001
EXPOSE $PORT
CMD ["node", "index.js"]