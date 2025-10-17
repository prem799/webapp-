# app/Dockerfile
# Build stage
FROM python:3.11-slim as builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt --prefix=/install

# Final stage (smaller)
FROM python:3.11-slim
ENV PATH=/install/bin:$PATH
WORKDIR /app
COPY --from=builder /install /install
COPY app.py .
EXPOSE 8080
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app", "--workers", "2"]
