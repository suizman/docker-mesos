#!/bin/bash

  curl -s -X POST http://127.0.0.1:8080/v2/apps \
  -d @apps/$1.json \
  -H "Content-type: application/json" | \
  python -m json.tool
