# Gunakan image Python sebagai base image
FROM python:3.8-slim

# Set work directory
WORKDIR /app

# Copy semua file ke dalam container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Jalankan aplikasi
CMD ["python", "app.py"]
