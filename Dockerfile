FROM python:3.7
LABEL maintainer="elenasuvorova1410@gmail.com"
RUN pip install --upgrade pip
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8180
RUN chmod +x /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]
