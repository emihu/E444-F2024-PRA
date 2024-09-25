FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
ENV FLASK_APP=hello.py
EXPOSE 3000
ENTRYPOINT ["python"]
CMD ["hello.py", "--host=0.0.0.0"]
