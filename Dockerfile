FROM ubuntu
EXPOSE 8501
WORKDIR /usr/src/app
COPY requirements.txt ./
COPY streamlit_app.py ./
RUN sudo apt-get python
RUN pip install streamlit
COPY . .
ENV PYTHONUNBUFFERED=1
CMD ["streamlit", "run", "--server.port", "80", "streamlit_app.py"]
