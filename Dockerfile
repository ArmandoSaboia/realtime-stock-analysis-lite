FROM python:3.9-slim

WORKDIR /app

# Copy only the necessary files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ ./src/
COPY config/ ./config/
COPY main.py .

# Create directories for data
RUN mkdir -p data/sample_data

# Set environment variables
ENV PYTHONPATH=/app
ENV PYTHONUNBUFFERED=1

# Define entry point
CMD ["python", "main.py"]

# Note: This is a simplified Dockerfile for testing purposes
# In production, you would include additional steps for security,
# optimization, and proper dependency management