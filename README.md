# RESPIN_ASRU_Challenge_2023
https://sites.google.com/view/respinasrchallenge2023/challenge

<h4>Test set</h4>h4>
Test audios, along with metadata is shared at https://ee.iisc.ac.in/madasr23dataset/download/test_set.tar.gz

Submission form will open on June 30th. It will be a json file with format {name}-{teamname}\_{affiliation}\_submission-{x}_{lang}_track-{number}.json. An example file is shared in this repo (sathvik-NA_iisc_submission-1_bh_track-1.json)
<h4>Corpus</h4>

---

The audio files are available at https://ee.iisc.ac.in/madasr23dataset/. <br>
The train and dev splits for both languages - Bengali (bn) and Bhojpuri (bh) are present in ```corpus``` folder <br>
The data is arranged in kaldi data preparation format - https://kaldi-asr.org/doc/data_prep.html. This will work for kaldi, espnet, k2 etc tooklits.  <br>
```utt2lang``` contains dialect mappings and ```txtids``` contains the unique ID of the sentences. <br>
You will have to modify ```wav.scp``` to reflect the path of downloaded audio.  <br>
For example - If you have the all the bengali audio files moved to a single folder ```/home/user/dataset/bn```, you can use sed command <br>
```cat wav.scp | sed 's:/data/Database/RESPIN/Bengali/bn-100/:/home/user/dataset/bn:g' > temp && mv temp wav.scp```

If you are using fairseq, you can first modify wav.scp as previously shown and then generate fairseq files from ```fairseq_utils/run_asru.sh``` <br>

---

<h4>Baselines</h4>

---
We fine tune wav2vec2 based pretrained model trained on Indian languages (CLSRIL-23), available <a href="https://github.com/Open-Speech-EkStep/vakyansh-models">here</a>.
The fine tuned models are available in the links shown below -

Bhojpuri - https://ee.iisc.ac.in/madasr23dataset/download/CSRIL_finetuned_RESPIN_Bhojpuri.pt <br>
Bengali - https://ee.iisc.ac.in/madasr23dataset/download/CSRIL_finetuned_RESPIN_Bengali.pt <br>

These models can be used for Track 3 and 4. They can be decoded using fairseq, with a language model. <br>
We provide 2 language models (trained with <a href="https://github.com/kpu/kenlm">kenlm</a>), one trained on training text (for Track 3) and another on additional dialect+domain text (Track 4). Note that you may use the additional text provided in this repository for track 1 and track 3.<br> 
We provide the scripts to train language model and decode with fairseq in ```fairseq_utils``` folder, and the trained models are present in ```kenlm_models``` folder.

Bhojpuri baseline models

| track  | Model | WER |
| ------------- | ------------- | ------------- |
| 1  | espnet-conformer  | 20.1 |
| 2  | kaldi  | 19.36 |
| 3  | fairseq-wav2vec2  | 18.13 |
| 4  | fairseq-wav2vec2  | 15.7 |
| 4  | kaldi  | 18.09 |

Bengali baseline models

| track  | Model | WER |
| ------------- | ------------- | ------------- |
| 1  | espnet-conformer  | 20.7 |
| 2  | kaldi  | 19.82 |
| 3  | fairseq-wav2vec2  | 19.1 |
| 4  | fairseq-wav2vec2  | 15.71 |
| 4  | kaldi  | 16.85 |


---
In case of any issues, contact challenge.respin@iisc.ac.in / sathvikudupa66@gmail.com
