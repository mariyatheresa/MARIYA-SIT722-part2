# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY book_catalog/requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY book_catalog/ .

# Make port 8800 available to the world outside this container
EXPOSE 8800

# Define environment variable
ENV DATABASE_URL="postgresql://sit722_postgresql_6_2p_user:CpgkHUGAyxPebMeASxNQQVH76glX2Nzx@dpg-cquod23v2p9s73e4f6n0-a.oregon-postgres.render.com/sit722_postgresql_6_2p"

# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8800"]
