FROM python:3.12.7
WORKDIR /app
COPY main.py /app/main.py
COPY requirements.txt /app/requirements

RUN pip install --no-cache-dir -r requirements.txt
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000"]