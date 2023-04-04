FROM nginx
COPY nginx.conf /etc/nginx/
EXPOSE 4000
HEALTHCHECK --interval=10s --timeout=3s --retries=1 CMD curl --silent --fail --request GET http://localhost:4000/ || exit 1