# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

RUN pip3 install openai

# Run app.py when the container launches
CMD ["python", "chat_with_lm_studio.py"]