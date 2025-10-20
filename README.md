# 🧩 eLTER-RI Controlled Vocabulary – Standard Observations (SO)

[![FAIR RDF Generation](https://github.com/LTER-Europe/SO/actions/workflows/sheet2rdf.yml/badge.svg?branch=main)](https://github.com/LTER-Europe/SO/actions/workflows/sheet2rdf.yml)

The **Standard Observations (SO) Thesaurus** compiles a harmonised set of terms describing the core variables, methods, and protocols identified as priorities for eLTER.  
It provides a controlled vocabulary to support the annotation, discovery, and integration of data collected through standardised observations across sites and disciplines.  
The SO Thesaurus is a key component for ensuring **metadata consistency** and enabling **spatially and temporally harmonised datasets** at the continental scale.  
It is used by [DEIMS-SDR](https://deims.org) and other [eLTER-CI](https://elter-ri.eu/) components to support metadata interoperability and facilitate the implementation of a common research infrastructure across Europe.

📘 **Vocabulary access:** [https://vocabs.lter-europe.net/so/en/](https://vocabs.lter-europe.net/so/en/)

---

## ⚙️ Automated FAIR Workflow — *sheet2rdf*

This repository is automatically updated through the [**sheet2rdf**](https://github.com/nikokaoja/sheet2rdf) workflow, which ensures that the vocabulary remains FAIR and up to date with its authoritative Google Sheet source.

The workflow automatically:

1. Fetches the source Google Sheet as `.xlsx` and `.csv` files  
2. Converts the sheet content into RDF (Turtle) format using [**xls2rdf**](https://github.com/sparna-git/xls2rdf)  
3. Commits the generated `.ttl`, `.xlsx`, and log files to this repository  
4. Publishes the new RDF to the [**Skosmos vocabulary server**](https://vocabs.lter-europe.net)

This workflow extends the original [**excel2rdf**](https://github.com/fair-data-collective/excel2rdf-template) and is licensed under the [Apache 2.0 License](https://github.com/nikokaoja/sheet2rdf/blob/main/License.md).

🧾 **Workflow provenance:**  
> This file has been modified from its originally licensed version by *WillOnGit* – see [README.md](https://github.com/eLTER-RI/vocab-so) at repository root for license information.

📚 **Citation:**  
> Nikola Vasiljevic. (2021, January 11). *sheet2rdf: First release* (Version v0.1). Zenodo. [https://doi.org/10.5281/zenodo.4432136](https://doi.org/10.5281/zenodo.4432136)

---

## 🧠 Repository contents

| File | Description |
|------|--------------|
| [standard-observations.ttl](https://github.com/LTER-Europe/SO/blob/main/standard-observations.ttl) | RDF (Turtle) representation of the eLTER Standard Observations vocabulary |
| [standard-observations.xlsx](https://github.com/LTER-Europe/SO/blob/main/standard-observations.xlsx) | Source spreadsheet fetched from Google Sheets |
| [standard-observations.csv](https://github.com/LTER-Europe/SO/blob/main/standard-observations.csv) | CSV export of the vocabulary |
| [logs/](https://github.com/LTER-Europe/SO/tree/main/logs) | Conversion logs produced during RDF generation |
| [.github/workflows/sheet2rdf.yml](https://github.com/LTER-Europe/SO/blob/main/.github/workflows/sheet2rdf.yml) | GitHub Action workflow automating the FAIR publication process |
---

## 🧭 Acknowledgements

This work builds on the efforts of the [eLTER-RI](https://elter-ri.eu/) communities, with support from multiple projects contributing to the development of interoperable and FAIR semantic resources for environmental research infrastructures.

---

## 💡 Related vocabularies

| Vocabulary | Description | Access |
|-------------|--------------|--------|
| **[SO – Standard Observations](https://github.com/LTER-Europe/SO)** | Controlled vocabulary describing eLTER Standard Observations (SOs) variables, methods, and protocols | [View in Skosmos](https://vocabs.lter-europe.net/so/en/) |
| **[CL – Controlled Lists](https://github.com/LTER-Europe/eLTER_CL)** | Standardised lists of values used across eLTER metadata systems | [View in Skosmos](https://vocabs.lter-europe.net/cl/en/) |
| **[EnvThes – Environmental Thesaurus](https://github.com/LTER-Europe/EnvThes)** | Common semantic framework for environmental parameters and concepts | [View in Skosmos](https://vocabs.lter-europe.net/envthes/en/) |
