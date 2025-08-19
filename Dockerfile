FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
# Copy all project files
COPY . .
EXPOSE 5000
# Run the Flask app
CMD ["python", "app.py"]