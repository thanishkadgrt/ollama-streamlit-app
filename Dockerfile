# Use Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Streamlit runs on port 8501
EXPOSE 8501

# Command to run Streamlit
CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]
