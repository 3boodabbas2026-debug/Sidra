# Safety net for Render "Web Service" deploys (Docker).
# NOTE: a Render *Static Site* is still the better choice (free, no
# cold starts) — but with this file the Web Service works too.
FROM nginx:alpine
COPY . /usr/share/nginx/html
# Render tells the app which port to use via $PORT (default 10000)
CMD ["sh", "-c", "printf 'server { listen %s; root /usr/share/nginx/html; index index.html; }' \"${PORT:-80}\" > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
