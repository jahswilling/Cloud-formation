#!/bin/bash

if ls | grep -q "doc.txt"; then
  echo "doc.txt found"
  exit 0
else
  echo "doc.txt not found"
  exit 1
fi
