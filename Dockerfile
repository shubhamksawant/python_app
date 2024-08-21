# Use the official Python image as the base image
FROM python:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY src/requirements.txt ./

# Install the dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY src/ .

# Expose the port that the app will run on
EXPOSE 3002

# Run the Python app
CMD ["python", "server.py"]
