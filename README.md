# RESPIN_ASRU_Challenge_2023

<h4>Corpus</h4>

----

The audio files are available at https://ee.iisc.ac.in/madasr23dataset/. <br>
The train and dev splits for both languages - Bengali (bn) and Bhojpuri (bh) are present in corpus folder <br>
The data is arranged in kaldi data preparation format - https://kaldi-asr.org/doc/data_prep.html. This will work for kaldi, espnet, k2 etc tooklits.  <br>
```utt2lang``` contains dialect mappings and ```txtids``` contains the unique ID of the sentences. <br>
You will have to modify ```wav.scp``` to reflect the path of downloaded audio.  <br>
For example - If you have the all the bengali audio files moved to a single folder ```/home/user/dataset/bn```, you can use sed command <br>
```cat wav.scp | sed 's:/data/Database/RESPIN/Bengali/bn-100/:/home/user/dataset/bn:g' > temp && mv temp wav.scp```

If you are using fairseq, you can first modify wav.scp as previously shown and then generate fairseq files from ```fairseq_utils/run_asru.sh```

----
In case of any issues, contact challenge.respin@iisc.ac.in / sathvikudupa66@gmail.com
