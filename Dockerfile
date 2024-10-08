FROM python:3.11-slim

RUN apt-get update
RUN apt-get -y install pandoc
RUN apt-get -y install texlive-xetex texlive-fonts-recommended texlive-plain-generic

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
