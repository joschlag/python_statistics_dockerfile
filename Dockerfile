FROM continuumio/miniconda3:25.3.1-1

ENV PATH=/opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda python=3.13.5 numpy=2.3.0 pandas=2.3.0 matplotlib=3.10.3 seaborn= 0.13.2 && \
	conda clean -a -y

CMD ["python"]


# RUN apt update && \
#    apt upgrade -y && \
#    apt install -y build-essential wget zlib1g zlib1g-dev python3 python3-pip && \
#    apt clean

#RUN pip install packaging seaborn numpy pandas matplotlib

#WORKDIR /home/app
#COPY . .
#CMD ["python3"]


