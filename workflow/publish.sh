#!/bin/bash
#
# publish ttl file to vocab server

# checks...
if [[ -z "$SKOSMOS_URL" ]];
	then echo "SKOSMOS_URL missing/empty"; exit 1;
fi

if [[ -z "$SKOSMOS_CREDENTIALS" ]];
	then echo "SKOSMOS_CREDENTIALS missing/empty"; exit 1;
fi

url="${SKOSMOS_URL%%/}"
auth="Authorization: Basic $SKOSMOS_CREDENTIALS"
# download other ontologies
mkdir vocabs
curl --silent --location https://i-adopt.github.io/ontology.ttl --output vocabs/i-adopt
curl --silent --location https://www.w3.org/ns/sosa --output vocabs/sosa
curl --silent --location https://rawcdn.githack.com/CSIRO-enviro-informatics/PUV-ont/dd2d8762f80a58e618269593e99d3f840de0f150/rdf/puv.ttl --output vocabs/puv
curl --silent --location https://raw.githubusercontent.com/oborel/obo-relations/master/ro.owl --output vocabs/obo

## 1/4
curl --silent "$url"/update \
	--header "$auth" \
	--header "Content-Type: application/sparql-update" \
	--data "PREFIX vocab: <https://vocabs.lter-europe.net/so/> CLEAR GRAPH vocab:"
## 2/4
curl --silent "$url"/data?graph=https%3A%2F%2Fvocabs.lter-europe.net%2Fso%2F \
	--header "$auth" \
	--header "Content-Type: text/turtle" \
	--data @standard-observations.ttl
## 3/4
curl --silent "$url"/update \
	--header "$auth" \
	--header "Content-Type: application/sparql-update" \
	--data @workflow/postprocess.sparql
## 4/4
curl --silent "$url"/data?graph=https%3A%2F%2Fvocabs.lter-europe.net%2Fso%2F \
	--header "$auth" \
	--header "Content-Type: text/turtle" \
	--data @vocabs/i-adopt
curl --silent "$url"/data?graph=https%3A%2F%2Fvocabs.lter-europe.net%2Fso%2F \
	--header "$auth" \
	--header "Content-Type: text/turtle" \
	--data @vocabs/sosa
curl --silent "$url"/data?graph=https%3A%2F%2Fvocabs.lter-europe.net%2Fso%2F \
	--header "$auth" \
	--header "Content-Type: text/turtle" \
	--data @vocabs/puv
curl --silent "$url"/data?graph=https%3A%2F%2Fvocabs.lter-europe.net%2Fso%2F \
	--header "$auth" \
	--header "Content-Type: application/rdf+xml" \
	--data @vocabs/obo

# cleanup
rm -rf vocabs
echo "done"
