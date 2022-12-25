# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:latest
# working directory
WORKDIR /src
# copy all files to the container
COPY .  /src
# Install pip requirements
RUN python -m pip install --no-cache-dir -r requirements.txt
# port number to expose
EXPOSE 5000
ENV FLASK_APP=src/app.py
# run the command
ENTRYPOINT [ "flask"]
CMD [ "run", "--host", "0.0.0.0" ]
# CMD ["python", "app.py"]
