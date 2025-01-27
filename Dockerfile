FROM julia:1.10-bookworm

ENV JULIA_DEPOT_PATH="/usr/local/share/julia"

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends procps && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false

COPY Project.toml /
COPY Manifest.toml /

RUN julia -e 'using Pkg; Pkg.instantiate()'
RUN julia --project=/ -e 'using Pkg; Pkg.instantiate(); Pkg.update()'
RUN \
    mv /Project.toml ${JULIA_DEPOT_PATH}/environments/v1.10/ && \
    mv /Manifest.toml ${JULIA_DEPOT_PATH}/environments/v1.10/

CMD [ "julia" ]
