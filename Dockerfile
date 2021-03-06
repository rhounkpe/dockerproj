FROM python:3.7.3-stretch

# Working directory
WORKDIR /app

# Copy source code to working directory
COPY . src/app.py /app/


# Install packages from requirements.txt
# hadolint ignore DL3013
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# RUN pip install --trusted-host pypi.python.org -r requirements.txt


# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD [ "flask", "run" ]
