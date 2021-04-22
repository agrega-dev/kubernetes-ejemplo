FROM python:3

MAINTAINER Omar Madrid "omadrid@agrega.com"

ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt


EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]