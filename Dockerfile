FROM ubuntu
EXPOSE 8501
WORKDIR /usr/src/app
COPY requirements.txt ./
COPY streamlit_app.py ./
RUN apt-get update
RUN apt-get update
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN pip install streamlit
COPY . .
ENV PYTHONUNBUFFERED=1
CMD ["streamlit", "run", "--server.port", "80", "streamlit_app.py"]
