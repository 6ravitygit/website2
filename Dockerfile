FROM python:3.11-alpine
WORKDIR /app
COPY index.html .
CMD python -m http.server $PORT --bind 0.0.0.0
