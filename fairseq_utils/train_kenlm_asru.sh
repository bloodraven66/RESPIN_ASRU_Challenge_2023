#!/bin/bash
lang="bh" #bn or bh
text="combined_uniq_sents" #combined_uniq_sents or train_uniq_sents
data_path='/home1/Sathvik/fairseq_datasets/'$lang'_asru/processed/'$text
save_path='/home1/Sathvik/fairseq_models/kenlm/'$lang'_asru/'
set -e
# for j in 6; do
j=3

x=$data_path
xd=`echo $x | rev | cut -d'/' -f1 | rev`
text_file=$x
model_name=$save_path/"$xd"_"$j"gram.arpa
ngram=$j
echo $text_file
echo $model_name
./build/bin/lmplz -o $ngram <$text_file > $model_name

