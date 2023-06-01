FROM node:20.1.0

# Create app directory
WORKDIR /usr/src/app
COPY . .

# Install deps and build
RUN npm ci
RUN npm run build

# Setup env
ENV NODE_ENV production
EXPOSE 3000

# Container entrypoint
CMD ["npm", "start"]
