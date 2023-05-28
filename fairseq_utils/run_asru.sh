#!/bin/bash

set -e

python3 generate_from_espnet_files_asru.py \
    --folder /home1/Sathvik/fairseq_datasets/bh_asru/raw_data/train \
    --save_folder /home1/Sathvik/fairseq_datasets/bh_asru/processed \
    --tag train \
    --wav_prep \
    --text_prep \
    --lexicon \
    --save_dict \

python3 generate_from_espnet_files_asru.py \
    --folder /home1/Sathvik/fairseq_datasets/bh_asru/raw_data/dev \
    --save_folder /home1/Sathvik/fairseq_datasets/bh_asru/processed \
    --tag dev \
    --wav_prep \
    --text_prep \

python3 generate_from_espnet_files_asru.py \
    --folder /home1/Sathvik/fairseq_datasets/bn_asru/raw_data/train \
    --save_folder /home1/Sathvik/fairseq_datasets/bn_asru/processed \
    --tag train \
    --wav_prep \
    --text_prep \
    --lexicon \
    --save_dict \

python3 generate_from_espnet_files_asru.py \
    --folder /home1/Sathvik/fairseq_datasets/bn_asru/raw_data/dev \
    --save_folder /home1/Sathvik/fairseq_datasets/bn_asru/processed \
    --tag dev \
    --wav_prep \
    --text_prep \

