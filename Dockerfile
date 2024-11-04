# Use the official Python 3.11 image as the base image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy the entire app directory into the container at /app
COPY . /app/

# Expose the port the app runs on
EXPOSE 5000

# Install the required Python libraries
RUN pip install --no-cache-dir flask

# Specify the entry point command to run your app.py file
CMD ["python3", "app.py"]