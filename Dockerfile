# Use the official Python 3 base image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY main.py .

# Set the command to run when the container starts
CMD ["python", "main.py"]
