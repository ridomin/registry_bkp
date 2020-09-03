# IoT Models Registry

This repository contains [DTDL](https://aka.ms/dtdl) model definitions.

All models, and their dependencies are listed in the `[model-index.json](model-index.json)` file.

The models, and the index are available in:

## [https://iotmodels.github.io/registry](https://iotmodels.github.io/registry)

## Submitting new models

This repo accepts new model submission following the next rules.

- Valid DTDL files.
- Dependencies can be resolved using the index
- The files are stored following the `models` folder hierarchy

There are automatic checks in place per each PR.

### Adding a new interface

The script `addModel.js` (requires node) can be used to add the required interface to the `models` folder and update the `model-index`

### Validation

The repo provides some tools and scripts to validate your models.

`dtdl2-validator`

`validate-index`

## Resolving models

The sister repo [iotmodels/dotnet-resolvers](https://github.com/iotmodels/dotnetresolvers) shows how to use the `model-index` to resolve models.
