# AMR FLASHit

This repository inclues the inputs needed to generate a [FLASHit](https://github.com/czbiohub/flash) library for AMR genes.

## Setup

After cloning this repository:

* `git submodule update --init`

* `cd flash` and follow the setup instruction in the README.md file.

* Change back to the root directory of this project (same directory with this README.md).

* `make`

This will produce two outputs:

* library.txt that includes all guides for the AMR genes provided (these can be found in inputs/full\_guide\_set/genes.fasta).

* amr_library.txt which includes a subset of the guides that match the AMR genes listed in inputs/full\_guide\_set/amr\_staph\_genes.txt. These are the guides used to cover the genes used in the [FLASHit paper](https://www.biorxiv.org/content/early/2018/09/27/426338) with slight differences do to code updates. For the code to reproduce the papers guide set see [tag 1.0](https://github.com/czbiohub/flash/releases/tag/v1.0) of the FLASHit code base.
