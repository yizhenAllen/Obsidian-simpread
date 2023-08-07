---
annotation-target: D:/app/Obsidian库/Obsidian@simpread/pdfs for ob/a-voice-activity-detector-employing-soft-decision-based-noise-sp.pdf
---

#知识/科研/VAD #文献笔记/vad

>%%
>```annotation-json
>{"created":"2023-04-03T10:09:47.248Z","text":"介绍了两个部分，第一个部分假设已知噪声的分布密度函数，假设S和N分别满足高斯分布，第二部分是估计噪声谱的方法","updated":"2023-04-03T10:09:47.248Z","document":{"title":"A Voice Activity Detector Employing Soft Decision Based Noise  Spectrum Adaptation - Acoustics, Speech and Signal Processing, 1998. Proceedings of the 1998 IEEE International Conferen","link":[{"href":"urn:x-pdf:b1802d5a141e4e401b9bc57a67262d3b"}],"documentFingerprint":"b1802d5a141e4e401b9bc57a67262d3b"},"uri":"urn:x-pdf:b1802d5a141e4e401b9bc57a67262d3b","target":[{"source":"urn:x-pdf:b1802d5a141e4e401b9bc57a67262d3b","selector":[{"type":"TextPositionSelector","start":952,"end":967},{"type":"TextQuoteSelector","exact":"  JNTRODUCTION ","prefix":" noise such as babble  noise. 1.","suffix":"Many speech coding applications "}]}]}
>```
>%%
>*%%PREFIX%%noise such as babble  noise. 1.%%HIGHLIGHT%% ==JNTRODUCTION== %%POSTFIX%%Many speech coding applications*
>%%LINK%%[[#^84mr3j3u9ui|show annotation]]
>%%COMMENT%%
>**介绍了两个部分，第一个部分假设已知噪声的分布密度函数，假设S和N分别满足高斯分布，第二部分是估计噪声谱的方法**
>%%TAGS%%
>#知识/科研/VAD
^84mr3j3u9ui




>%%
>```annotation-json
>{"text":"**提出假设检验问题，如果信号X=S+N(H1假设)，则可以由最大似然估计将S的方差换成样本(即已知的noisy speech)的函数，然后和N的分布(H0假设)相比，得到似然比函数，如果似然比比较大，就拒绝H0假设，阈值一般是empirical的。**\n\n**似然比函数是Itakura-Saito distortion (ISD)的离散形式近似值，进一步和 GSM标准的DTX mode所用的VAD的似然比函数（后验信噪比对频带k的平均）相比较，发现就多了一个对数项而已，这个项一般是比较小的，只有在后验信噪比gamma远小于1的时候，才相差较大，而这在H0和H1都不可能。画了张图比较两个似然比函数，主要是在非语音段有些差距。**\n","target":[{"source":"urn:x-pdf:b1802d5a141e4e401b9bc57a67262d3b","selector":[{"type":"TextPositionSelector","start":2863,"end":2932},{"type":"TextQuoteSelector","exact":"The decision rule of a VAD can be formulated by  a decision statistic","prefix":"OF THE VOICE ACTIVITY DETECTOR","suffix":",  which  is a  quantity  that"}]}],"created":"2023-04-03T10:20:08.772Z","updated":"2023-04-03T10:20:08.772Z","document":{"title":"A Voice Activity Detector Employing Soft Decision Based Noise  Spectrum Adaptation - Acoustics, Speech and Signal Processing, 1998. Proceedings of the 1998 IEEE International Conferen","link":[{"href":"urn:x-pdf:b1802d5a141e4e401b9bc57a67262d3b"}],"documentFingerprint":"b1802d5a141e4e401b9bc57a67262d3b"},"uri":"urn:x-pdf:b1802d5a141e4e401b9bc57a67262d3b"}
>```
>%%
>*%%PREFIX%%OF THE VOICE ACTIVITY DETECTOR%%HIGHLIGHT%% ==The decision rule of a VAD can be formulated by  a decision statistic== %%POSTFIX%%,  which  is a  quantity  that*
>%%LINK%%[[#^xpz25pi3iss|show annotation]]
>%%COMMENT%%
>**提出假设检验问题，如果信号X=S+N(H1假设)，则可以由最大似然估计将S的方差换成样本(即已知的noisy speech)的函数，然后和N的分布(H0假设)相比，得到似然比函数，如果似然比比较大，就拒绝H0假设，阈值一般是empirical的。**
>
>**似然比函数是Itakura-Saito distortion (ISD)的离散形式近似值，进一步和 GSM标准的DTX mode所用的VAD的似然比函数（后验信噪比对频带k的平均）相比较，发现就多了一个对数项而已，这个项一般是比较小的，只有在后验信噪比gamma远小于1的时候，才相差较大，而这在H0和H1都不可能。画了张图比较两个似然比函数，主要是在非语音段有些差距。**
>
>%%TAGS%%
>
^xpz25pi3iss

