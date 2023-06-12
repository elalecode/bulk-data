FROM dimitri/pgloader:latest


COPY ./start-import /start
RUN sed -i 's/\r//' /start
RUN chmod +x /start

WORKDIR /code