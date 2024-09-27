FROM python:3.11-slim

RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g npm@latest
RUN python --version && node --version && npm --version

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]