FROM nginx
COPY nginx.conf /etc/nginx/
EXPOSE 4000
HEALTHCHECK CMD curl --silent --fail --request GET http://localhost:4000/ || exit 1