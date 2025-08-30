FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install gunicorn && pip install -r requirements.txt
CMD ["gunicorn", "--bind", ":80", "--workers", "1", "--threads", "8", "main:app"]
# CMD ["gunicorn", "--bind", "10.2.0.0:80", "--workers", "1", "--threads", "8", "main:app"]

#
