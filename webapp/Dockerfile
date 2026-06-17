FROM python:3.11-slim

WORKDIR /app

# Install base repository dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application repository and the active config.eln schemas
COPY . /app

# Expose the internal container port for the ELB Target Group
EXPOSE 8080

# Environment toggle pointing to your active ELN config file
ENV ELN_CONFIG_PATH="/app/config.eln"

# Run the web server (e.g., Uvicorn or Gunicorn backend web server)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
