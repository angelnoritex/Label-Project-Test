# Use the official Python image from the Docker Hub
FROM django:latest

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip

RUN pip install -r requirements.txt

# ODBC driver is installed
RUN sudo apt-get install msodbcsql17 mssql-tools

# Copy project
COPY . /code/

# Set environment variable for database connection
#ENV DATABASE_URL="mssql://sa:1234@password@db:1433/dj-project"

# Run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]