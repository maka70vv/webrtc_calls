FROM python:3.12-alpine

WORKDIR /usr/src/chat

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Install Poetry
#RUN pip install poetry
#RUN poetry config virtualenvs.create false
#
## Copy pyproject.toml and poetry.lock
#COPY pyproject.toml poetry.lock ./
#RUN poetry install


COPY . .
