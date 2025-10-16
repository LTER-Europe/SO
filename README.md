# eLTER-RI Controlled Vocabulary – Standard Observations (SO)
[![FAIR RDF Generation](https://github.com/eLTER-RI/vocab-so/actions/workflows/sheet2rdf.yml/badge.svg)](https://github.com/eLTER-RI/vocab-so/actions/workflows/sheet2rdf.yml)
eLTER vocabulary for eLTER Standard Observations.
Hosted at [vocabs.lter-europe.net](https://vocabs.lter-europe.net/so/en/).

# sheet2rdf workflow
The vocabulary is derived from a Google Sheet by an automatic workflow which:

- Fetches the sheet as `xlsx` and `csv` files
- Converts the sheet to RDF (Turtle) using [xls2rdf](https://github.com/sparna-git/xls2rdf)
- Commits the sheet, RDF and conversion logs to this repository
- Publishes the new RDF to the vocabulary server

This workflow is an extension of [excel2rdf](https://github.com/fair-data-collective/excel2rdf-template) and is licensed under the [Apache 2.0 License](https://github.com/nikokaoja/sheet2rdf/blob/main/License.md).

Nikola Vasiljevic. (2021, January 11). sheet2rdf: First release (Version v0.1). Zenodo. http://doi.org/10.5281/zenodo.4432136
