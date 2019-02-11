FROM sagemath/sagemath:8.4

RUN sage --pip install jupyterlab pari_jupyter

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
