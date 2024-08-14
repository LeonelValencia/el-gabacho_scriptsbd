# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /api

COPY "API rest SI"/ api/

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r /api/requirements.txt

# Run app
CMD ["python3", "app.py"]