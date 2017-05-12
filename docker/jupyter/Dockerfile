FROM caffe:gosu

#RUN apt-get update && apt-get install -y --no-install-recommends \
        #ipython \
        #ipython-notebook && \
    #rm -rf /var/lib/apt/lists/*

RUN pip --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        sklearn \
        hmmlearn \
        pillow \
        && \
    python -m ipykernel.kernelspec

# Configure environment
#ENV C_USER choong
#ENV C_UID 1001
#ENV HOME /home/$C_USER

#RUN useradd -m -s /bin/bash -N -u $C_UID $C_USER -G users && \
    #mkdir /home/$C_USER/work && \
    #mkdir /home/$C_USER/.jupyter

#EXPOSE 8888
#WORKDIR /home/$C_USER/work

#COPY jupyter_notebook_config.py /home/$C_USER/.jupyter/
#RUN chown -R $C_USER:users /home/$C_USER/ && chown -R root:users /opt/caffe

#USER $C_USER

# Add Tini
ENV TINI_VERSION v0.14.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
