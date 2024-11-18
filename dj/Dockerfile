# Use the official Python image from the Docker Hub
FROM python

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENV DATABASE_NAME="dj-project"
ENV DATABASE_USER="sa"
ENV DATABASE_PASSWORD="1234@password"
ENV DATABASE_HOST="localhost"
ENV DATABASE_PORT="1433"


# # Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


# mssql dependency (Debian 11)
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update
RUN ACCEPT_EULA=Y apt-get install msodbcsql17 mssql-tools -y


RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
#RUN source ~/.bashrc




EXPOSE 8000
# Copy project


COPY . /code/

#RUN python manage.py migrate --fake-initial

CMD ["sh", "-c", "python manage.py runserver 0.0.0.0:8000"]

