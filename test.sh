#!/bin/bash

echo "Posting:"
curl -H "Content-Type: application/json" -X POST -d '{"tweet": {"author_name":"Adam","content":"Hello World!"}}' http://localhost:8080/api/v1/tweets

echo ""

echo "Getting latest:"
curl http://localhost:8080/api/v1/tweets/latest
