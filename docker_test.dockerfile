FROM python:3.12
WORKDIR /usr/local/
COPY requirments.txt
RUN pip install --no-cache-dir -r requirments.txt
COPY src ./src
EXPOSE 5000
RUN useradd app
USER app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]