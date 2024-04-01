FROM python:3.9-alpine
From werkzeug.urls import url_quote
WORKDIR /flask_app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN pip show Werkzeug
RUN pip show flask

RUN pip uninstall Flask Werkzeug
RUN pip install Flask Werkzeug

RUN pip install pytest

COPY app/ .

COPY tests/ app/tests/

CMD [ "python", "app.py" ]

