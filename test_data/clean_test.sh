#!/usr/bin/env bash

DIR=$(pwd)/$(dirname "$0")

rm -rf $DIR/01_fastq $DIR/02_qc $DIR/03_trim $DIR/04_align $DIR/05_results
