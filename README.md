# SO
eLTER vocabulary for eLTER Standard Observations

# sheet2rdf workflow
This repository includes an automatic workflow, executed by means of Github actions, and underlying shell and python scripts which:

- Fetches a Google Sheet from Google Drive and stores it as `xlsx` and `csv` files
- Converts the sheet to machine-actionable and FAIR RDF vocabulary using [xls2rdf](https://github.com/sparna-git/xls2rdf)
- Commits conversion logs to this repository

This workflow is an extension of [excel2rdf](https://github.com/fair-data-collective/excel2rdf-template) and is licensed under the [Apache 2.0 License](https://github.com/nikokaoja/sheet2rdf/blob/main/License.md).

Nikola Vasiljevic. (2021, January 11). sheet2rdf: First release (Version v0.1). Zenodo. http://doi.org/10.5281/zenodo.4432136
