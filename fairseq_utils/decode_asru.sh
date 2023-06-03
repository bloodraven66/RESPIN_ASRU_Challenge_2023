#!/bin/bash

set -e

subset="dev" 
kenlm="" #path to kenlm file
results=""
wav2vec2_path="" #fine tuned asr checkpoint path
data="" #path to fairseq processed folder
lexicon="" #path to fairseq processed lexicon
beam="70"
lm="kenlm"


python3 examples/speech_recognition/infer.py $data \
                --task audio_finetuning \
                --nbest 1 \
                --path $wav2vec2_path \
                --gen-subset $subset  \
                --results-path $results \
                --w2l-decoder $lm \
                --lm-model $kenlm \
                --lm-weight 2 \
                --word-score -1 \
                --sil-weight 0 \
                --criterion ctc \
                --labels ltr \
                --max-tokens 4000000 \
                --post-process letter \
                --lexicon $lexicon \
                --beam $beam \


