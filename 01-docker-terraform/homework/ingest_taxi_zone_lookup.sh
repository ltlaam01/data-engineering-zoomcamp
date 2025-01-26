#!/bin/bash

URL="https://github.com/DataTalksClub/nyc-tlc-data/releases/download/misc/taxi_zone_lookup.csv"

python ingest_data.py \
  --user=postgres \
  --password=postgres \
  --host=localhost \
  --port=5433 \
  --db=ny_taxi \
  --table_name=taxi_zone_lookup \
  --url=${URL}
