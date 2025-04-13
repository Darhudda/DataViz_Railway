FROM python:3.10-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . .
COPY pages ./pages

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["streamlit", "run"]
CMD ["app.py", "--server.port=8080", "--server.address=0.0.0.0"]
