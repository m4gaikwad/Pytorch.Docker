FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel        
RUN /opt/conda/bin/conda install -c conda-forge jupyterlab
RUN /opt/conda/bin/conda install matplotlib scikit-learn seaborn pandas
RUN /opt/conda/bin/conda clean -ya
CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter lab --notebook-dir=/workspace --ip 0.0.0.0 --no-browser --allow-root"]
