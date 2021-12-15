FROM nfcore/base:1.14
LABEL authors="Roofiya" \
      description="Docker container containing fastqc"

WORKDIR ./
COPY environment.yml ./
RUN conda env create -f environment.yml && conda clean -a
ENV PATH /opt/conda/envs/tiest_env/bin:$PATH
