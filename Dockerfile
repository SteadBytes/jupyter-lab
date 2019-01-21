FROM python:3.7-slim 

RUN apt-get update && \
    apt-get install -y git wget curl gnupg2 && \
    apt-get -y autoclean && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    apt-get autoremove -y

# Install Node.js
# Install Node.js
RUN node -v
RUN npm -v

# jupyter config with default password
RUN mkdir /root/.jupyter
COPY ./jupyter_notebook_config.json /root/.jupyter

# pip installs
RUN pip install jupyterlab requests tqdm numpy matplotlib && \
    pip install calysto-scheme --user && \
    python -m calysto_scheme install --user

# jupyterlab installs
RUN jupyter labextension install jupyterlab_vim
RUN jupyter labextension enable jupyterlab_vim

EXPOSE 8888
CMD jupyter lab --ip=0.0.0.0 --port 8888 --no-browser --allow-root