FROM python:3.7.3-stretch

# Set Working Directory
WORKDIR /app

# Copy source code to working directory
COPY . /app/
COPY model_data/boston_housing_prediction.joblib /app/model_data
COPY model_data/housing.csv /app/model_data
#COPY . nlib /app/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]