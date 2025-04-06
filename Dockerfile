# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the Flask application code into the container
COPY . /app/

# Expose the application port
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
