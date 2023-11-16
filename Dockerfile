FROM node:18-alpine3.18

# Create app directory
WORKDIR /src/

# Copy app to the workdir
COPY . .

#install app dependencies
RUN npm install 

# Expose port 3000
EXPOSE 3000

# Set Envirnomental Variables
ENV PORT=3000

# Finally, we tell container to run the app
CMD [ "npm", "start"]
# CMD [ "npm", "run", "dev"]


