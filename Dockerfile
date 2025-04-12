FROM python:3.10-slim
WORKDIR /fastapi

COPY requirements.txt /fastapi
RUN pip install -r requirements.txt

COPY . /fastapi/

EXPOSE 8080
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
