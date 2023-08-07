Function:
- use wavs to create files used to VAD_test when you **only need segments output of VAD**

- input
	- a **dir** contains the **wav files** of 12345_wav, like {uri}.wav
- output
	- real uem file & table.csv
	- use uem file to create **fake** rttm dir , sad dir
		- save as **wav2uem&csv&fake_rttm&fake_sad.py**

## how to
### prepare data
1. extract the duration of wav files
2. generate all.uem file & table.csv
3. use all.uem to create fake rttm dir and sad dir

### vad
use **clean1/2 method** to enhance wav files, then vad

vad use model 1, 2, 3 and give three results

total 6 results