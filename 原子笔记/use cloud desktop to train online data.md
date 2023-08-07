#总结记录/工作记录 

# 2023-07-15
## Remote Desktop Tutorial
1. vpn，need sms
	- account：**duxing**
	- password：**ZYzx@2022**
	- ip: 117.159.207.15
	- port: 8888
2. cloud desktop - Vmware
	- user: **wangfei1**
	- password: **Cmos#10086**
	- ip: **https://172.20.126.247**
3. 4A，need sms
	- url of 4a, open with edge: http:/4a.cmos.cmcc:21001/uac/web3/jsp/frame/main.jsp
	- account：**duxing**
	- password：**ZYzx#10086**
![[Pasted image 20230724123335.png]]
4. from `192.168.158.16`, run:
	- **ssh zx_liqinglong@192.168.158.22**
	- **Enhancement**: **ssh zx_liuyu@192.168.158.25**
 
5. cd to **/data/zkd_trian**

```
transfer files, first upload file to 192.168.158.16
then from 192.168.158.16, run:

scp filename zx_liqinglong@192.168.158.22:/data/zkd_train/
```
![[Pasted image 20230724124816.png]]
## Accounts of Cloud Desktop(deprecated)
- user: niubaolin
- password: ZYzx_nbl2020
- platform: VMware
- ip: **https://172.22.207.244**


- Platform: vmware
- account: liuzhuangzhuang
- password: 2wdv@WDV


## Build Kaldi-Tools

- zip Kaldi directory from route `/disk1/chime/espnet/tools/kaldi`, in 172.16.46.220

### Install sox
download sox package from website:[SoX - Sound eXchange - Browse /sox/14.4.2 at SourceForge.net](https://sourceforge.net/projects/sox/files/sox/14.4.2/)
![[Pasted image 20230719151540.png]]
then do:
```bash
tar -zxvf sox-14.4.2.tar.gz
cd sox-14.4.2
./configure
sudo make -s && sudo make install
```
add the following lien to ~/.bashrc:
```bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/your_path_to_sox/sox-14.4.2/src/.libs
```
and finally activate ~/.bashrc:
```bash
source ~/.bashrc
```

### Install MKL
go to [Site Unreachable](https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl-download.html)and download MKL offline installer
![[Pasted image 20230719153936.png]]
click on the text enclosed by the red rectangle, download the sh script

transfer the script to server, and run:
> sudo ./blabla.sh

![[Pasted image 20230719164316.png]]

reference: [Use the setvars Script with Linux* or MacOS*](https://www.intel.com/content/www/us/en/docs/oneapi/programming-guide/2023-0/use-the-setvars-script-with-linux-or-macos.html#GUID-DB93A7EF-BFB9-41BE-96DD-1BB883DC6B3D)

cd to **/opt/intel/oneapi**, and run following to **set the environment variable**:
> source ./setvars.sh

after that, you can verify if the setting is successful by run:
> env | grep SETVARS_COMPLETED

it means that setting is successful if it returns:
> SETVARS_COMPLETED=1

open kaldi/tools/extras/check_dependencies.sh, then do the following modification:
```bash
# MKL_ROOT="${MKL_ROOT:-/opt/intel/mkl}"
 MKL_ROOT="${MKL_ROOT:-/opt/intel/oneapi/mkl/latest}"
```
### Build
run check_dependencies.sh, it means you successfully set the prerequisite if you get following results: 
> . /check_dependencies. sh: all OK.

manually download **cub-1.8.0.tar.gz** & **openfst-1.7.2.tar.gz** etc., put them into ==kaldi/tools==, then run: 
```bash
wget -nv -T 10 -t 1 http://www.openfst.org/twiki/pub/FST/FstDownload/openfst-1.7.2.tar.gz

wget -nv -T 10 -t 3 -O sctk-20159b5.tar.gz https://kgithub.com/usnistgov/SCTK/archive/20159b5.tar.gz

wget -nv -T 10 -t 3 -O sph2pipe-2.5.tar.gz https://kgithub.com/burrmill/sph2pipe/archive/2.5.tar.gz
```

> make

successfully build tools if you get:
![[Pasted image 20230720094032.png]]

## Build Kaldi-Src
cd to **kaldi/src**, run:
```bash
  ./configure --shared --mkl-root=/opt/intel/oneapi/mkl/latest
  make depend -j 8
  make -j 8
```


## All Labels In Data
- **"{ENS}"**
- **"[ENS]"**
- **"{SIL}"**
- **"[SIL]"**
- **"[MUSIC]"**
- **"{MUSIC}"**
- **"{HBK}"**
- **"{LBK}"**
- **"ALLUNK}"**, 不少
- **"{ALLUNK"**, 两个
- **"ALLUNK"**, 不少
- **"{ALLUNK}"**, 最多
- "{UNK}花园"
- "你[UNK]啥"
- "[DEAF]"
- "{DEAF}"
- "{sys}"
- "[SYS]"
- "{SYS}"
	- 具体听完还是比较明显的人声, 故视为语音处理
- "{SYS}一元"
- "RECORD}", 两个
- "{RECORD}"
- "[RECORD]", 基本是和内容一起的
- "+"

以下的都主动置为duration = ~~0.01s(too short)~~ 0.1s了
- **"{HBK}"**
- **"{LBK}"**
- **"ALLUNK}"**, 不少
- **"{ALLUNK"**, 两个
- **"ALLUNK"**, 不少
- **"{ALLUNK}"**, 最多

- 生成程序为**textgrid2rttm2sad.py**
- 生成之后, 会有一部分只有SIL或者ENS的语音无法生成对应的rttm和sad, 首先找出他们, 再给他们生成0.1s语音的假标签, 从而也加入到训练集中, 可以使用**wav2uem&csv&fake_rttm&fake_sad.py**

**123778**个音频, 剩下**121936**个, 其余的都是纯ENS, 1842个
用于调试的音频随机100个, 再加上1842个纯ENS, 一共1942个

## 服务器mobile 训练

> [!ERROR] utils/validate_data_dir.sh: empty file **spk2utt**
> - makedir1.py生成utt2spk
> - utt2spk_to_spk2utt.pl生成**spk2utt**
> - 这两个都没什么问题
> - local/train_sad.sh中的`utils/data/convert_data_dir_to_whole.sh`有问题, 导致其最后面的fix_data_dir.sh报错

### convert_data_dir_to_whole.sh
两个参数是:
- data=data/dihard3_dev
- dir=data/dihard3_dev_whole

- 在vad_mobile2/local/make_data_dir1.py第333行增加default参数
![[Pasted image 20230728130743.png]]

> [!Error] **utt2spk is not in sorted order or has duplicates**
> 这可能是训练文件名不规范导致的, 把相应的地方注释掉, 即可解决

> [!Error] **no utterances remained: not proceeding further**以及 utterance的数量和训练音频数不符, 如**kept 100 utterances out of 123778 utterances**
> 把data/dihard3_dev和data/dihard3_dev_whole下面的文件都删一删, 即可解决

> [!Error] **num_ jobs_final cannot exceed the number of archives in the egs directory**
> 应该是训练数据太少导致的,我使用调试的1000+个音频也会报错, 可能要改一下源码: num-jobs-final change to 1
> 待调试程序最后在这里报错, 换上实际训练数据差不多就能跑通了

> [!Error] **关于Dataclasses修饰器的Syntax Error**
> 是python脚本的实际解释器版本太低了, 和python脚本最开头的
> #!/usr/bin/env python有关
> 法一是直接把第一行改成miniconda3环境中的python
> 法二是在run.sh中添加
> **export PATH=/path/to/miniconda3/bin/:$PATH**

- 00:20 run successfully! 

- 12:51 begin training!
- 17:50 finish training!

## 2023-07-30
- separate the train and test wav
- test wav is the same as before

1. generate the test_wav_name.txt
2. There are **1414 test wavs** in total.
4. check the number of wav is correct
4. mv wavs that have the same name from dir "wav_trained" to dir "wav_test"
5. There are **123778** wavs in total, out of which **1414** wavs are used for testing, leaving **122364** wavs for training, out of which **120527** wavs has speech, and **1837** wavs doesn't has speech.

pure ens or pure sil: 005fcdc25d4e49e1bc7d64e2ba0e9356.lab

## 2023-07-31
- update **wavs2lable.sh** & **textgrid2rttm2lab.py**
- they can be used to create rttm & labs from wavs & textgrids.

When talking about testing online data VAD, model "vad_AB" is better than model "vad"

almost best result of model **vad_AB** testing on original online data:
![[Pasted image 20230731155218.png]]
almost best result of model that trained using mobile internal data testing on original online data:
![[Pasted image 20230731155110.png]]

result of model vad_AB testing on clean1 online data:
