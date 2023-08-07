---
annotation target: pdfs for ob/bai2019.pdf
---


>%%
>```annotation-json
>{"created":"2023-04-04T02:40:41.929Z","text":"摘要部分：基于TDNNs的VAD，使用**simple chunk based decision method**去决策。检测指标IoU, ERR, AUC，提升很大","updated":"2023-04-04T02:40:41.929Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":616,"end":624},{"type":"TextQuoteSelector","exact":"Abstract","prefix":"htao.zqwen.liubin}@nlpr.ia.ac.cn","suffix":"-Voice activity detection (VAD) "}]}]}
>```
>%%
>*%%PREFIX%%htao.zqwen.liubin}@nlpr.ia.ac.cn%%HIGHLIGHT%% ==Abstract== %%POSTFIX%%-Voice activity detection (VAD)*
>%%LINK%%[[#^hytfkdfpbt7|show annotation]]
>%%COMMENT%%
>摘要部分：基于TDNNs的VAD，使用**simple chunk based decision method**去决策。检测指标IoU, ERR, AUC，提升很大
>%%TAGS%%
>
^hytfkdfpbt7


>%%
>```annotation-json
>{"created":"2023-04-04T02:45:17.388Z","text":"开始介绍一些传统算法，对阈值敏感，所以在不同的噪声环境下，就很麻烦了","updated":"2023-04-04T02:45:17.388Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":2020,"end":2051},{"type":"TextQuoteSelector","exact":"Many conventional VADapproaches","prefix":"ormance of speech applications. ","suffix":" are based on manual rules. In t"}]}]}
>```
>%%
>*%%PREFIX%%ormance of speech applications.%%HIGHLIGHT%% ==Many conventional VADapproaches== %%POSTFIX%%are based on manual rules. In t*
>%%LINK%%[[#^uxwvr0lfcm|show annotation]]
>%%COMMENT%%
>开始介绍一些**传统算法**，对阈值敏感，所以在不同的噪声环境下，就很麻烦了
>%%TAGS%%
>
^uxwvr0lfcm


>%%
>```annotation-json
>{"created":"2023-04-04T02:47:00.678Z","text":"后来有Pattern matching based methods和基于统计模型的方法，开始使用软决策。高斯，gamma，HMM等等去建模语音/非语音部分。因为假设了分布，能力肯定受限了\n\n然后就开始统计学习方法了，SVM， AdaBoost","updated":"2023-04-04T02:47:00.678Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":2607,"end":2637},{"type":"TextQuoteSelector","exact":"Pattern matching based methods","prefix":"uredfor different environments. ","suffix":"are also introduced to VAD. Itak"}]}]}
>```
>%%
>*%%PREFIX%%uredfor different environments.%%HIGHLIGHT%% ==Pattern matching based methods== %%POSTFIX%%are also introduced to VAD. Itak*
>%%LINK%%[[#^c14bykwq0w|show annotation]]
>%%COMMENT%%
>后来有Pattern matching based methods和基于统计模型的方法，开始使用软决策。高斯，gamma，HMM等等去建模语音/非语音部分。因为假设了分布，能力肯定受限了
>
>然后就开始统计学习方法了，SVM， AdaBoost
>%%TAGS%%
>
^c14bykwq0w


>%%
>```annotation-json
>{"text":"开始讲深度学习了，基于数据的直接乘非线性变换，效果好啊\n\nCNN,RNN,DNN的VAD效果好，在低信噪比中robust！\n\n分析表明：**long short-term memory (LSTM) outperformed DNNs and CNNs**--16年**\"A comparative study of robustness of deep learning approaches for vad\"**","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":3498,"end":3536},{"type":"TextQuoteSelector","exact":"Instead of raw features, deep learning","prefix":"ance ofthese methods is limited.","suffix":"techniques capturecomplex struc"}]}],"created":"2023-04-04T02:51:32.384Z","updated":"2023-04-04T02:51:32.384Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}
>```
>%%
>*%%PREFIX%%ance ofthese methods is limited.%%HIGHLIGHT%% ==Instead of raw features, deep learning== %%POSTFIX%%techniques capturecomplex struc*
>%%LINK%%[[#^ullvt8s7dr|show annotation]]
>%%COMMENT%%
>开始讲深度学习了，基于数据的直接乘非线性变换，效果好啊
>
>CNN,RNN,DNN的VAD效果好，在低信噪比中robust！
>
>分析表明：**long short-term memory (LSTM) outperformed DNNs and CNNs**--16年**"A comparative study of robustness of deep learning approaches for vad"**
>%%TAGS%%
>
^ullvt8s7dr


>%%
>```annotation-json
>{"created":"2023-04-04T02:55:44.567Z","text":"上下文对VAD很重要[19], 我们可以堆叠连续帧输入给网络,但如果上下文很长就麻烦. TDNNs就可以很好抓取[27], 计算量也可以通过降采样来降低","updated":"2023-04-04T02:55:44.567Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":4092,"end":4124},{"type":"TextQuoteSelector","exact":"Context information is important","prefix":" outperformed DNNs and CNNs[26].","suffix":" for improving VAD per-formance "}]}]}
>```
>%%
>*%%PREFIX%%outperformed DNNs and CNNs[26].%%HIGHLIGHT%% ==Context information is important== %%POSTFIX%%for improving VAD per-formance*
>%%LINK%%[[#^r8evjc7jeta|show annotation]]
>%%COMMENT%%
>上下文对VAD很重要[19], 我们可以堆叠连续帧输入给网络,但如果上下文很长就麻烦. TDNNs就可以很好抓取[27], 计算量也可以通过降采样来降低
>%%TAGS%%
>
^r8evjc7jeta


>%%
>```annotation-json
>{"created":"2023-04-04T03:08:50.811Z","text":"本文提供了TDNN based 系统, 还有chunk based边界点决策.\n\n检测方法, 是第一个用IoU去估量效果的, 还用了AOU, EER, 实验语料的是Wall Street Journal (WSJ) corpus\n\ncompared with LSTM baseline, 给出提升效果\n\n还和moving average method比较, 提升了ioU\n\n全文组织: 第二节讲vad 系统, 第三节讲实验setup, 评判度量,实验结果, 第四节总结","updated":"2023-04-04T03:08:50.811Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":4886,"end":4917},{"type":"TextQuoteSelector","exact":"present a TDNN based VAD system","prefix":"Rsuccessfully.In this paper, we ","suffix":". Achunk based border point deci"}]}]}
>```
>%%
>*%%PREFIX%%Rsuccessfully.In this paper, we%%HIGHLIGHT%% ==present a TDNN based VAD system== %%POSTFIX%%. Achunk based border point deci*
>%%LINK%%[[#^zy1hgiegq1a|show annotation]]
>%%COMMENT%%
>本文提供了TDNN based 系统, 还有chunk based边界点决策.
>
>检测方法, 是第一个用IoU去估量效果的, 还用了AOU, EER, 实验语料的是Wall Street Journal (WSJ) corpus
>
>compared with LSTM baseline, 给出提升效果
>
>还和moving average method比较, 提升了ioU
>
>全文组织: 第二节讲vad 系统, 第三节讲实验setup, 评判度量,实验结果, 第四节总结
>%%TAGS%%
>
^zy1hgiegq1a


>%%
>```annotation-json
>{"text":"![[Pasted image 20230404112115.png]]","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":7182,"end":7208},{"type":"TextQuoteSelector","exact":"The proposed VAD framework","prefix":"the paper.n. PROPOSED VAD SYSTEM","suffix":"is illustrated in Figure 1.The"}]}],"created":"2023-04-04T03:20:49.780Z","updated":"2023-04-04T03:20:49.780Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}
>```
>%%
>*%%PREFIX%%the paper.n. PROPOSED VAD SYSTEM%%HIGHLIGHT%% ==The proposed VAD framework== %%POSTFIX%%is illustrated in Figure 1.The*
>%%LINK%%[[#^b3jmvtm47si|show annotation]]
>%%COMMENT%%
>![[Pasted image 20230404112115.png]]
>%%TAGS%%
>
^b3jmvtm47si


>%%
>```annotation-json
>{"created":"2023-04-04T03:30:24.043Z","text":"开始讲TDNNs的特性了, 底层判断短时性质, 高层判断长时不变性.\ntdnns可以看成featrue上滑动的非线性变换, 寻找时不变的变换.\n可以考虑上\"未来的信息\",tdnns是一种未来反馈(feedforward)的网络,可以并行计算","updated":"2023-04-04T03:30:24.043Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":7866,"end":8012},{"type":"TextQuoteSelector","exact":"A TDNN can be seen as a non-linear transformation sliding along feature sequences, andtime-invariant feature transform is learned during training.","prefix":"red athigh level hidden layers. ","suffix":"Otherwise, compared with standar"}]}]}
>```
>%%
>*%%PREFIX%%red athigh level hidden layers.%%HIGHLIGHT%% ==A TDNN can be seen as a non-linear transformation sliding along feature sequences, andtime-invariant feature transform is learned during training.== %%POSTFIX%%Otherwise, compared with standar*
>%%LINK%%[[#^ljejk3uuuse|show annotation]]
>%%COMMENT%%
>开始讲TDNNs的特性了, 底层判断短时性质, 高层判断长时不变性.
>tdnns可以看成featrue上滑动的非线性变换, 寻找时不变的变换.
>可以考虑上"未来的信息",tdnns是一种未来反馈(feedforward)的网络,可以并行计算
>%%TAGS%%
>
^ljejk3uuuse


>%%
>```annotation-json
>{"created":"2023-04-04T11:55:47.304Z","text":"这个方法通过降采样, 使得在高级的hidden layer种输入长时数据的同时可以保持输入同样大小的特征向量.\n\n比如第二层分析{-2, 0, 2}帧的内容, 等等\n\n使用relu作为激活函数, relu给网络带来稀疏性(因为它忽略掉小于0的数), 可以被视为一种稀疏导向的正则化项,让网络更robust.\n\n同时relu计算方便简单.","updated":"2023-04-04T11:55:47.304Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":8284,"end":8336},{"type":"TextQuoteSelector","exact":"The network used in the system is showed in Figure 2","prefix":"mprove computational efficiency.","suffix":". Theoverall architecture is lik"}]}]}
>```
>%%
>*%%PREFIX%%mprove computational efficiency.%%HIGHLIGHT%% ==The network used in the system is showed in Figure 2== %%POSTFIX%%. Theoverall architecture is lik*
>%%LINK%%[[#^ja88h9ov5vk|show annotation]]
>%%COMMENT%%
>这个方法通过降采样, 使得在高级的hidden layer种输入长时数据的同时可以保持输入同样大小的特征向量.
>
>比如第二层分析{-2, 0, 2}帧的内容, 等等
>
>使用relu作为激活函数, relu给网络带来稀疏性(因为它忽略掉小于0的数), 可以被视为一种稀疏导向的正则化项,让网络更robust.
>
>同时relu计算方便简单.
>%%TAGS%%
>
^ja88h9ov5vk


>%%
>```annotation-json
>{"created":"2023-04-04T12:31:14.507Z","text":"对一段语音进行概率的分析, n帧中, 如果有非语音帧的存在, 对应一个概率, 如果这个概率大于0.95, 则把这段语音视为非语音段","updated":"2023-04-04T12:31:14.507Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":7570,"end":7590},{"type":"TextQuoteSelector","exact":"Chunk Based Decision","prefix":"esand segments input signals.B. ","suffix":"(1)A. TDNN ArchitectureA TDNN ar"}]}]}
>```
>%%
>*%%PREFIX%%esand segments input signals.B.%%HIGHLIGHT%% ==Chunk Based Decision== %%POSTFIX%%(1)A. TDNN ArchitectureA TDNN ar*
>%%LINK%%[[#^18o2nq13b6l|show annotation]]
>%%COMMENT%%
>对一段语音进行概率的分析, n帧中, 如果有非语音帧的存在, 对应一个概率, 如果这个概率大于0.95, 则把这段语音视为非语音段
>%%TAGS%%
>
^18o2nq13b6l


>%%
>```annotation-json
>{"created":"2023-04-04T13:39:16.698Z","text":"使用真实语音+带噪语音共同输入训练\n\n用语音识别把干净语音分段加标签, 然后带噪语音显然是一样的\n\n","updated":"2023-04-04T13:39:16.698Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":13927,"end":13935},{"type":"TextQuoteSelector","exact":"Datasets","prefix":"t),IoU is defined as follows:A. ","suffix":"Proposed VAD system is evaluated"}]}]}
>```
>%%
>*%%PREFIX%%t),IoU is defined as follows:A.%%HIGHLIGHT%% ==Datasets== %%POSTFIX%%Proposed VAD system is evaluated*
>%%LINK%%[[#^5fjhpau8hjl|show annotation]]
>%%COMMENT%%
>使用真实语音+带噪语音共同输入训练
>
>用语音识别把干净语音分段加标签, 然后带噪语音显然是一样的
>
>
>%%TAGS%%
>
^5fjhpau8hjl


>%%
>```annotation-json
>{"created":"2023-04-04T14:28:12.960Z","text":"讲解IoU的测评准则, 对于每个预测segment, 可以选出一个和它计算的IoU最大的一个对应的真值segment, 记录这个IoU.\n\n将这个IoU和阈值比较, 如果够大, 就保留, 并且对应的真值segment被视为recalled segment, 如果不够大, 就置0\n\n将IoU对预测segment取平均(分母是所有片段), 作为评判指标, 越大说明越准确. 将recalled segment的IoU取平均(分母是recall的片段), 用来衡量recall指标.","updated":"2023-04-04T14:28:12.960Z","document":{"title":"Voice Activity Detection Based on Time-Delay Neural Networks","link":[{"href":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767"}],"documentFingerprint":"3c7225dfb331f04abf5be3a4ee5e6767"},"uri":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","target":[{"source":"urn:x-pdf:3c7225dfb331f04abf5be3a4ee5e6767","selector":[{"type":"TextPositionSelector","start":13579,"end":13609},{"type":"TextQuoteSelector","exact":"Segmentation Evaluation Metric","prefix":"rms of border point decision.B. ","suffix":"To evaluate segmentation perform"}]}]}
>```
>%%
>*%%PREFIX%%rms of border point decision.B.%%HIGHLIGHT%% ==Segmentation Evaluation Metric== %%POSTFIX%%To evaluate segmentation perform*
>%%LINK%%[[#^lqc6wmqcmyp|show annotation]]
>%%COMMENT%%
>讲解IoU的测评准则, 对于每个预测segment, 可以选出一个和它计算的IoU最大的一个对应的真值segment, 记录这个IoU.
>
>将这个IoU和阈值比较, 如果够大, 就保留, 并且对应的真值segment被视为recalled segment, 如果不够大, 就置0
>
>将IoU对预测segment取平均(分母是所有片段), 作为评判指标, 越大说明越准确. 将recalled segment的IoU取平均(分母是recall的片段), 用来衡量recall指标.
>%%TAGS%%
>
^lqc6wmqcmyp


#文献笔记/vad #知识/模型/TDNNs #知识/科研/VAD