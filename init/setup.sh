#!/bin/bash

echo "===== HACKSUDO S3 LAB INIT ====="

export AWS_ACCESS_KEY_ID=test
export AWS_SECRET_ACCESS_KEY=test
export AWS_DEFAULT_REGION=eu-north-1

sleep 5

aws --endpoint-url=http://localhost:4566 s3 mb s3://hacksudos3lab

echo "<h1>Hacksudo S3 Lab</h1>" > /tmp/index.html
echo "HACKSUDO{DOCKER_S3_CTF}" > /tmp/flag.txt

aws --endpoint-url=http://localhost:4566 s3 cp /tmp/index.html s3://hacksudos3lab/
aws --endpoint-url=http://localhost:4566 s3 cp /tmp/flag.txt s3://hacksudos3lab/

echo "===== INIT DONE ====="
