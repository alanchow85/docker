# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port Gunicorn will run on
EXPOSE 8000

# Define environment variable
ENV NAME World

# Command to run the application using Gunicorn
# "app:app" means load the 'app' variable from the 'app.py' module
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]



