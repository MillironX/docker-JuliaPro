# JuliaPro Docker Image

[![Build Docker](https://github.com/MillironX/docker-JuliaPro/actions/workflows/build_docker.yml/badge.svg)](https://github.com/MillironX/docker-JuliaPro/actions/workflows/build_docker.yml)
[![Unlicense](https://img.shields.io/github/license/MillironX/docker-JuliaPro)](https://github.com/MillironX/docker-JuliaPro/blob/master/LICENSE)
[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/MillironX/docker-JuliaPro)](https://github.com/MillironX/docker-JuliaPro/tags)
[![Docker Pulls](https://img.shields.io/docker/pulls/millironx/juliapro)](https://hub.docker.com/r/millironx/juliapro)
[![Docker Repository on Quay](https://quay.io/repository/millironx/juliapro/status "Docker Repository on Quay")](https://quay.io/repository/millironx/juliapro)

Remember that clunky [Atom]-based [Julia] distribution that gave Julia LTS a UI
and debugger similar to [Matlab] and already included all the packages you could
possibly think to use? Remember [JuliaPro]?

This is JuilaPro in a [Docker] image[^1].

## Usage

The image is hosted on [Docker Hub], [Quay], and the [GitHub Container
Registry], and is compatible with [Docker], [Podman], and
[Singularity/Apptainer], and probably others.

```bash
docker pull millironx/juliapro:latest
podman pull quay.io/millironx/juliapro:latest
singularity pull docker://ghcr.io/millironx/juliapro:latest
```

The packages are installed in a depot in `/usr/local/share/julia`, so keep this
in mind when overwriting the [`JULIA_DEPOT_PATH`] variable. For more information
on the rationale for this and examples, see

- nf-core tools discussion: <https://github.com/nf-core/tools/pull/1317>
- Alex Peltzer's blog: <https://apeltzer.github.io/post/03-julia-lang-nextflow>

## Included Packages

The following packages were included in JuliaPro as of April 26, 2020 according
to [the Wayback Machine]. A checkmark indicates the package was included in this
image, clear boxes indicate that it couldn't be included. I've included several
other packages that I consider essential today at the bottom of the list.

### General Programming

- [x] [DataStructures](https://github.com/JuliaLang/DataStructures.jl)
- [x] [LightGraphs](https://github.com/JuliaGraphs/LightGraphs.jl)
- [ ] ~~[Atom](https://github.com/JunoLab/Atom.jl)~~ (Interop meaningless in
      container)
- [x] [JuliaWebAPI](https://github.com/JuliaWeb/JuliaWebAPI.jl)
- [ ] ~~[IJulia](https://github.com/JuliaLang/IJulia.jl)~~ (Soft dependency on
      Python, which isn't included in the container)
- [x] [Nettle](https://github.com/staticfloat/Nettle.jl)
- [x] [DSP](https://github.com/JuliaDSP/DSP.jl)
- [x] [NearestNeighbors](https://github.com/KristofferC/NearestNeighbors.jl)
- [x] [Parameters](https://github.com/mauro3/Parameters.jl)
- [x] [ParserCombinator](https://github.com/andrewcooke/ParserCombinator.jl)
- [x] [Libz](https://github.com/BioJulia/Libz.jl)
- [x] [BenchmarkTools](https://github.com/JuliaCI/BenchmarkTools.jl)
- [x] ~~[Rebugger](https://github.com/timholy/Rebugger.jl)~~ (Errors on
      precompilation)
- [x] [Debugger](https://github.com/JuliaDebug/Debugger.jl)

### General Math

- [x] [Calculus](https://github.com/johnmyleswhite/Calculus.jl)
- [x] [DataFrames](https://github.com/JuliaStats/DataFrames.jl)
- [x] [StatsBase](https://github.com/JuliaStats/StatsBase.jl)
- [x] [Distributions](https://github.com/JuliaStats/Distributions.jl)
- [x] [HypothesisTests](https://github.com/JuliaStats/HypothesisTests.jl)
- [x] [GLM](https://github.com/JuliaStats/GLM.jl)
- [x] [OnlineStats](https://github.com/joshday/OnlineStats.jl)
- [x] [DifferentialEquations](https://github.com/JuliaDiffEq/DifferentialEquations.jl)
- [ ] ~~[SymPy](https://github.com/JuliaPy/SymPy.jl)~~ (No Python in container)
- [x] [KernelDensity](https://github.com/JuliaStats/KernelDensity.jl)
- [x] [Zygote](https://github.com/FluxML/Zygote.jl)

### Optimization

- [x] [Optim](https://github.com/JuliaOpt/Optim.jl)
- [x] [Roots](https://github.com/JuliaMath/Roots.jl)

### Databases

- [x] [JDBC](https://github.com/JuliaDB/JDBC.jl)

### Building UIs and Visualization

- [ ] ~~[PyPlot](https://github.com/JuliaPy/PyPlot.jl)~~ (No Python in container)
- [x] [Interact](https://github.com/JuliaGizmos/Interact.jl)
- [x] [LaTeXStrings](https://github.com/stevengj/LaTeXStrings.jl)
- [x] [Formatting](https://github.com/JuliaIO/Formatting.jl)
- [x] [Images](https://github.com/JuliaImages/Images.jl)
- [x] [Plots](https://github.com/JuliaPlots/Plots.jl)
- [x] [GR](https://github.com/jheinen/GR.jl)
- [x] [UnicodePlots](https://github.com/Evizero/UnicodePlots.jl)
- [x] [ImageMagick](https://github.com/JuliaIO/ImageMagick.jl)
- [x] [StatsPlots](https://github.com/JuliaPlots/StatsPlots.jl)
- [x] [PGFPlots](https://github.com/JuliaTeX/PGFPlots.jl)

### Deep Learning and Machine Learning

- [x] [Knet](https://github.com/denizyuret/Knet.jl)
- [x] [Clustering](https://github.com/JuliaStats/Clustering.jl)
- [x] [DecisionTree](https://github.com/bensadeghi/DecisionTree.jl)
- [x] [MLBase](https://github.com/JuliaStats/MLBase.jl)
- [x] [Flux](https://github.com/FluxML/Flux.jl)
- [ ] ~~[TensorFlow](https://github.com/malmaud/TensorFlow.jl)~~ (Dependency
      conflict with Flux: opted for Flux over TensorFlow)
- [x] [Metalhead](https://github.com/FluxML/Metalhead.jl)
- [ ] ~~[ScikitLearn](https://github.com/cstjean/ScikitLearn.jl)~~ (No Python in
      container)

### Interoperability with Other Languages

All interoperability has been lost due to not including the other languages in
this image.

- [ ] ~~[RCall (Interoperability with R)](https://github.com/JuliaInterop/RCall.jl)~~
- [ ] ~~[JavaCall (Java)](https://github.com/JuliaInterop/JavaCall.jl)~~
- [ ] ~~[PyCall (Python)](https://github.com/JuliaPy/PyCall.jl)~~
- [ ] ~~[Conda (Python dependencies)](https://github.com/JuliaPy/Conda.jl)~~
- [ ] ~~[JuliaInXL (Microsoft Excel)](https://github.com/JuliaComputing/JuliaInXL)~~

### File and Data Formats

- [x] [JSON](https://github.com/JuliaIO/JSON.jl)
- [x] [JLD2](https://github.com/JuliaIO/JLD2.jl)
- [x] [CSV](https://github.com/JuliaData/CSV.jl)
- [x] [LightXML](https://github.com/JuliaIO/LightXML.jl)
- [x] [StaticArrays](https://github.com/JuliaArrays/StaticArrays.jl)
- [x] [ProtoBuf](https://github.com/JuliaIO/ProtoBuf.jl)
- [ ] ~~[CuArrays](https://github.com/JuliaGPU/CuArrays.jl)~~ (Package
      deprecated and depends on GPU hardware)

### Economics and Finance

- [x] [QuantEcon](https://github.com/QuantEcon/QuantEcon.jl)
- [x] [BusinessDays](https://github.com/JuliaFinance/BusinessDays.jl)
- [ ] ~~[Bloomberg](https://github.com/milktrader/Bloomberg.jl)~~ (Empty package
      -- maybe proprietary?)
- [ ] ~~[Blpapi (Bloomberg connector)](https://juliacomputing.com/docs/blpapi-manual.pdf)~~ (Package unavailable)
- [ ] ~~[Miletus](https://github.com/JuliaComputing/Miletus.jl)~~ (Package old
      enough to require more downgrades than I'm comfortable with)

### My Own Additions

- [x] [ArgParse](https://github.com/carlobaldassi/ArgParse.jl)
- [x] [EzXML](https://github.com/JuliaIO/EzXML.jl)
- [x] [JSON3](https://github.com/quinnj/JSON3.jl)
- [x] [YAML](https://github.com/JuliaData/YAML.jl)
- [x] [NLsolve](https://github.com/JuliaNLSolvers/NLsolve.jl)
- [x] [Kelpie](https://github.com/MillironX/Kelpie.jl)
- [x] [Mustache](https://github.com/jverzani/Mustache.jl)
- [x] [HTTP](https://github.com/JuliaWeb/http.jl)

[^1]: This image doesn't include Juno, just the curated packages.

[`julia_depot_path`]: https://docs.julialang.org/en/v1/manual/environment-variables/#JULIA_DEPOT_PATH
[atom]: https://atom.io
[docker hub]: https://hub.docker.com
[docker]: https://www.docker.com
[github container registry]: https://ghcr.io
[julia]: https://julialang.org
[juliapro]: https://web.archive.org/web/2/https://juliacomputing.com/products/juliapro
[matlab]: https://www.mathworks.com/matlab
[podman]: https://podman.io
[quay]: https://quay.io
[singularity/apptainer]: https://apptainer.org
[the wayback machine]: https://web.archive.org/web/20200426173353/https://juliacomputing.com/products/juliapro#curated-pkgs
