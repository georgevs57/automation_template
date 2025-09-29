FROM python:3.9.23-slim
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 3000
ENTRYPOINT ["python", "run.py", "--host", "0.0.0.0", "--port", "3000"]