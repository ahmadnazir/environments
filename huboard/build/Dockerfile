FROM penneo/huboard-app
MAINTAINER Ahmad N. Raja <ahmadnazir@gmail.com>

ADD .env /app/.env
ADD Procfile /app/Procfile

# Run Huboard instance
EXPOSE 5000
CMD foreman start -f /app/Procfile
