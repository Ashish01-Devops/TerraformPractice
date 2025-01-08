#!/bin/bash
resources=(
  "aws_s3_bucket.name"
  "aws_instance.dev"
)

for resource in "${resources[@]}"; do
  targets+=" -target=$resource"
done

terraform apply $targets  ### you can apply/destro use cammoand : terraform apply $targets