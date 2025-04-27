# Use official Python image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy dependency files and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the full application
COPY . .

# Run tests before starting the app
RUN pytest

# Expose port and run FastAPI
EXPOSE 8000
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

