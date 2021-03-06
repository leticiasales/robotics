# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get update && apt-get install -y wget

RUN chmod +x install_ros_melodic.sh && ./install_ros_melodic.sh

RUN apt-get install -y python-rospy && apt-get install -y unzip

RUN chmod +x install_opencv2.sh && ./install_opencv2.sh

RUN pip install --upgrade pip && pip install pyyaml

RUN pip install rospkg && pip install opencv-python

RUN rosdep init && rosdep update

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]