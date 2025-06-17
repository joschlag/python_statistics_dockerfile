FROM continuumio/miniconda3:25.3.1-1

ENV PATH=/opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda python=3.11 numpy=1.26 pandas=2.2 matplotlib=3.8 seaborn=0.13.2 && \
	conda clean -a -y
 
RUN ln -s /usr/bin/python3 /usr/bin/python

CMD ["python3"]


# RUN apt update && \
#    apt upgrade -y && \
#    apt install -y build-essential wget zlib1g zlib1g-dev python3 python3-pip && \
#    apt clean

#RUN pip install packaging seaborn numpy pandas matplotlib

#WORKDIR /home/app
#COPY . .
#CMD ["python3"]


