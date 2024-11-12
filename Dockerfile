# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any dependencies specified in requirements.txt
RUN pip install -r  requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose the port that the Flask app runs on
EXPOSE 5000

# Define the environment variable for Flask to run in development mode
ENV FLASK_ENV=development

# Command to run the Flask app
CMD ["python", "app.py"]

