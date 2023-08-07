---
annotation target: D:/apps/Obsidian库/Obsidian@simpread/pdfs for ob/END-TO-END DOMAIN-ADVERSARIAL VOICE ACTIVITY DETECTION.pdf
---


>%%
>```annotation-json
>{"created":"2023-04-05T12:27:25.141Z","text":"第一部分是端对端的vad模型，第二部分是增加了域分类的分支，还提供了代码","updated":"2023-04-05T12:27:25.141Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":486,"end":494},{"type":"TextQuoteSelector","exact":"ABSTRACT","prefix":"pkins University, Baltimore, USA","suffix":"Voice activity detection is the "}]}]}
>```
>%%
>*%%PREFIX%%pkins University, Baltimore, USA%%HIGHLIGHT%% ==ABSTRACT== %%POSTFIX%%Voice activity detection is the*
>%%LINK%%[[#^xfcge17g7i|show annotation]]
>%%COMMENT%%
>第一部分是端对端的vad模型，第二部分是增加了域分类的分支，还提供了代码
>%%TAGS%%
>
^xfcge17g7i


>%%
>```annotation-json
>{"created":"2023-04-05T12:28:06.061Z","text":"一般来说, 让training data 和test data 使用同领域的数据\n\n如果训练集中过多不同领域的数据, 那么就会很影响模型的性能, 训练完对一部分领域效果好, 但对另一部分效果很差.\n\n对不同领域test 数据的robust是重要的","updated":"2023-04-05T12:28:06.061Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":1848,"end":1873},{"type":"TextQuoteSelector","exact":"NTRODUCTION & RELATED WOR","prefix":"cNet, Long Short-Term Memory1. I","suffix":"KVoice activity detection is one"}]}]}
>```
>%%
>*%%PREFIX%%cNet, Long Short-Term Memory1. I%%HIGHLIGHT%% ==NTRODUCTION & RELATED WOR== %%POSTFIX%%KVoice activity detection is one*
>%%LINK%%[[#^njx6wl69ivq|show annotation]]
>%%COMMENT%%
>一般来说, 让training data 和test data 使用同领域的数据
>
>如果训练集中过多不同领域的数据, 那么就会很影响模型的性能, 训练完对一部分领域效果好, 但对另一部分效果很差.
>
>对不同领域test 数据的robust是重要的
>%%TAGS%%
>
^njx6wl69ivq


>%%
>```annotation-json
>{"created":"2023-04-05T12:34:50.324Z","text":"两个例子去提升特征的鲁棒性:\n1. noise-aware training[1] 在语音识别任务\n2. [2\\] Ganin, **domain adaptation approach**, 使用了类似这篇文章的网络结构","updated":"2023-04-05T12:34:50.324Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":3689,"end":3725},{"type":"TextQuoteSelector","exact":"improving invariance and robust-ness","prefix":"lysistools.Approaches aiming at ","suffix":" of learnt features have been lo"}]}]}
>```
>%%
>*%%PREFIX%%lysistools.Approaches aiming at%%HIGHLIGHT%% ==improving invariance and robust-ness== %%POSTFIX%%of learnt features have been lo*
>%%LINK%%[[#^ftbjfqc8ho|show annotation]]
>%%COMMENT%%
>两个例子去提升特征的鲁棒性:
>1. noise-aware training[1] 在语音识别任务
>2. [2\] Ganin, **domain adaptation approach**, 使用了类似这篇文章的网络结构
>%%TAGS%%
>
^ftbjfqc8ho


>%%
>```annotation-json
>{"created":"2023-04-05T12:43:03.270Z","text":"继续围绕domain-adversarial方法举例展开,\n有用于语音领域分类的(senone classification) , 有用于去做语音识别的, 用多语言系统去寻找语言不变性\n有用于识别说话人不变性的, 这篇文章是利用domain-adversarial的方法去做vad, 这是创新点","updated":"2023-04-05T12:43:03.270Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":4423,"end":4452},{"type":"TextQuoteSelector","exact":"domain-adversarial approaches","prefix":"t features.Over the last years, ","suffix":" tosolve such problems have gain"}]}]}
>```
>%%
>*%%PREFIX%%t features.Over the last years,%%HIGHLIGHT%% ==domain-adversarial approaches== %%POSTFIX%%tosolve such problems have gain*
>%%LINK%%[[#^n0ls4a3yz4|show annotation]]
>%%COMMENT%%
>继续围绕domain-adversarial方法举例展开,
>有用于语音领域分类的(senone classification) , 有用于去做语音识别的, 用多语言系统去寻找语言不变性
>有用于识别说话人不变性的, 这篇文章是利用domain-adversarial的方法去做vad, 这是创新点
>%%TAGS%%
>
^n0ls4a3yz4


>%%
>```annotation-json
>{"text":"用**语音识别模型sincnet[11]**去特征提取, 这个模型对领域是敏感的, 我们通过**muting**这些信息, 可以让模型更加鲁棒","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":5405,"end":5452},{"type":"TextQuoteSelector","exact":"SincNet model [11] acting as a featureextractor","prefix":"11]. Ourapproach relies on the","suffix":". We show that such approaches a"}]}],"created":"2023-04-05T12:49:20.403Z","updated":"2023-04-05T12:49:20.403Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}
>```
>%%
>*%%PREFIX%%11]. Ourapproach relies on the%%HIGHLIGHT%% ==SincNet model [11] acting as a featureextractor== %%POSTFIX%%. We show that such approaches a*
>%%LINK%%[[#^49e2rl2vcyj|show annotation]]
>%%COMMENT%%
>用**语音识别模型sincnet[11]**去特征提取, 这个模型对领域是敏感的, 我们通过**muting**这些信息, 可以让模型更加鲁棒
>%%TAGS%%
>
^49e2rl2vcyj


>%%
>```annotation-json
>{"created":"2023-04-05T12:56:32.831Z","text":"vad可以被视为输入很多特征向量序列, 然后对每一个都输出一个标签, 0 或1 ,代表语音/非语音.\n\n使用长且变长的语音去训练没有意义, 我们使用短的定长的语音段( sub-sequence )进行训练和推断.\n\n具体算法已经在平板记录了.","updated":"2023-04-05T12:56:32.831Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":5645,"end":5669},{"type":"TextQuoteSelector","exact":"Voice activity detection","prefix":"-TO-END VOICE ACTIVITY DETECTION","suffix":" is the task of detecting speech"}]}]}
>```
>%%
>*%%PREFIX%%-TO-END VOICE ACTIVITY DETECTION%%HIGHLIGHT%% ==Voice activity detection== %%POSTFIX%%is the task of detecting speech*
>%%LINK%%[[#^cp9on5dhbo|show annotation]]
>%%COMMENT%%
>vad可以被视为输入很多特征向量序列, 然后对每一个都输出一个标签, 0 或1 ,代表语音/非语音.
>
>使用长且变长的语音去训练没有意义, 我们使用短的定长的语音段( sub-sequence )进行训练和推断.
>
>具体算法已经在平板记录了.
>%%TAGS%%
>
^cp9on5dhbo


>%%
>```annotation-json
>{"created":"2023-04-05T14:40:42.545Z","text":"用一种对抗学习的方式去更新引进的参数$\\theta_d$, 来增加对域多样性的鲁棒性.\n\n**对抗学习方式类似参考文献[12]**","updated":"2023-04-05T14:40:42.545Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":7317,"end":7340},{"type":"TextQuoteSelector","exact":"an additional branch θd","prefix":" Our solutionconsists of adding ","suffix":" trained in an ad-versarial fash"}]}]}
>```
>%%
>*%%PREFIX%%Our solutionconsists of adding%%HIGHLIGHT%% ==an additional branch θd== %%POSTFIX%%trained in an ad-versarial fash*
>%%LINK%%[[#^51nhte8vmvi|show annotation]]
>%%COMMENT%%
>用一种对抗学习的方式去更新引进的参数$\theta_d$, 来增加对域多样性的鲁棒性.
>
>**对抗学习方式类似参考文献[12]**
>%%TAGS%%
>
^51nhte8vmvi


>%%
>```annotation-json
>{"created":"2023-04-05T14:54:46.134Z","text":"运用了梯度循环层--**参考文献[2]**","updated":"2023-04-05T14:54:46.134Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":7782,"end":7811},{"type":"TextQuoteSelector","exact":"a gradient reversallayer [2] ","prefix":"d multi-task learning scenario, ","suffix":"is added in front of the domain "}]}]}
>```
>%%
>*%%PREFIX%%d multi-task learning scenario,%%HIGHLIGHT%% ==a gradient reversallayer [2]== %%POSTFIX%%is added in front of the domain*
>%%LINK%%[[#^pr4uu9hau2l|show annotation]]
>%%COMMENT%%
>运用了梯度循环层--**参考文献[2]**
>%%TAGS%%
>
^pr4uu9hau2l


>%%
>```annotation-json
>{"created":"2023-04-06T12:42:15.789Z","text":"16小时训练集, 8小时开发集, 22小时测试集\n\n都分成了11个领域\n\n\n\n","updated":"2023-04-06T12:42:15.789Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":9249,"end":9355},{"type":"TextQuoteSelector","exact":"16hours, 126 files) serve as training set, the other third (8 hours,66 files) becomes our development set.","prefix":"nt set in two parts: two third (","suffix":" The test set (22 hours,194 file"}]}]}
>```
>%%
>*%%PREFIX%%nt set in two parts: two third (%%HIGHLIGHT%% ==16hours, 126 files) serve as training set, the other third (8 hours,66 files) becomes our development set.== %%POSTFIX%%The test set (22 hours,194 file*
>%%LINK%%[[#^yo6byv69prf|show annotation]]
>%%COMMENT%%
>16小时训练集, 8小时开发集, 22小时测试集
>
>都分成了11个领域
>
>
>
>
>%%TAGS%%
>
^yo6byv69prf


>%%
>```annotation-json
>{"text":"用**pyannote.metrics**库去计算估计精度，detection error\nrate, 是(语音识别成非语音 + 非语音识别成语音)/总和, 前者是missed detection, 后者是false alarm\n\n","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":10797,"end":10817},{"type":"TextQuoteSelector","exact":"detection error rate","prefix":"s [14], to evaluate our systems:","suffix":"= false alarm + missed detectio"}]}],"created":"2023-04-06T13:31:30.250Z","updated":"2023-04-06T13:31:30.250Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}
>```
>%%
>*%%PREFIX%%s [14], to evaluate our systems:%%HIGHLIGHT%% ==detection error rate== %%POSTFIX%%= false alarm + missed detectio*
>%%LINK%%[[#^kvz7usyub6s|show annotation]]
>%%COMMENT%%
>用**pyannote.metrics**库去计算估计精度，detection error
>rate, 是(语音识别成非语音 + 非语音识别成语音)/总和, 前者是missed detection, 后者是false alarm
>
>
>%%TAGS%%
>
^kvz7usyub6s


>%%
>```annotation-json
>{"created":"2023-04-06T13:35:56.666Z","text":"Sincnet, 用的参考文献[11]的, 所有的LSTM和层都是128维的,具体内容直接看代码","updated":"2023-04-06T13:35:56.666Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":11163,"end":11170},{"type":"TextQuoteSelector","exact":"SincNet","prefix":"ure used in all experiments. For","suffix":", we use the configuration propo"}]}]}
>```
>%%
>*%%PREFIX%%ure used in all experiments. For%%HIGHLIGHT%% ==SincNet== %%POSTFIX%%, we use the configuration propo*
>%%LINK%%[[#^es5bq08xt3|show annotation]]
>%%COMMENT%%
>Sincnet, 用的参考文献[11]的, 所有的LSTM和层都是128维的,具体内容直接看代码
>%%TAGS%%
>
^es5bq08xt3


>%%
>```annotation-json
>{"created":"2023-04-06T13:46:56.494Z","text":"假设用来训练领域的样本非常的广泛, 所以我们的测试集并不仅仅局限于训练的样本领域, 而是没有这个限制, 这能让我们的模型更鲁棒, 同时在面对新领域的时候也不需要重新特定训练","updated":"2023-04-06T13:46:56.494Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":8384,"end":8507},{"type":"TextQuoteSelector","exact":"However, we do assume that the numberand variability of domains covered by the (labeled) trainingset is sufficiently large.","prefix":"get domain dataduring training. ","suffix":" The intuition behind this state"}]}]}
>```
>%%
>*%%PREFIX%%get domain dataduring training.%%HIGHLIGHT%% ==However, we do assume that the numberand variability of domains covered by the (labeled) trainingset is sufficiently large.== %%POSTFIX%%The intuition behind this state*
>%%LINK%%[[#^konzft5cmw|show annotation]]
>%%COMMENT%%
>假设用来训练领域的样本非常的广泛, 所以我们的测试集并不仅仅局限于训练的样本领域, 而是没有这个限制, 这能让我们的模型更鲁棒, 同时在面对新领域的时候也不需要重新特定训练
>%%TAGS%%
>
^konzft5cmw


>%%
>```annotation-json
>{"created":"2023-04-06T13:48:49.562Z","text":"训练集至少300个epochs, 利用开发集, 依据判断错误率最小的原则, 调整epoch以及阈值sigma.\n\n再运用在测试集上, 注意我们的测试集可以包含训练领域外的数据.","updated":"2023-04-06T13:48:49.562Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":11524,"end":11641},{"type":"TextQuoteSelector","exact":"300 epochs on the training set. The development set is used tochoose the actual epoch and detection threshold σ that ","prefix":"ral network is trained for up to","suffix":"mini-mize the detection error ra"}]}]}
>```
>%%
>*%%PREFIX%%ral network is trained for up to%%HIGHLIGHT%% ==300 epochs on the training set. The development set is used tochoose the actual epoch and detection threshold σ that== %%POSTFIX%%mini-mize the detection error ra*
>%%LINK%%[[#^yncn1e0aq2k|show annotation]]
>%%COMMENT%%
>训练集至少300个epochs, 利用开发集, 依据判断错误率最小的原则, 调整epoch以及阈值sigma.
>
>再运用在测试集上, 注意我们的测试集可以包含训练领域外的数据.
>%%TAGS%%
>
^yncn1e0aq2k


>%%
>```annotation-json
>{"created":"2023-04-06T13:51:13.987Z","text":"将主分支和\"MFCCs作为特征的方法a\", 以及\"Second DIHARD的赢家方法b\"做对比, outperform","updated":"2023-04-06T13:51:13.987Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":12602,"end":12639},{"type":"TextQuoteSelector","exact":"nt where handcrafted features (MFCCs)","prefix":"proach and compares it toa varia","suffix":" are used inplace of trainable o"}]}]}
>```
>%%
>*%%PREFIX%%proach and compares it toa varia%%HIGHLIGHT%% ==nt where handcrafted features (MFCCs)== %%POSTFIX%%are used inplace of trainable o*
>%%LINK%%[[#^6oht84oieqt|show annotation]]
>%%COMMENT%%
>将主分支和"MFCCs作为特征的方法a", 以及"Second DIHARD的赢家方法b"做对比, outperform
>%%TAGS%%
>
^6oht84oieqt


>%%
>```annotation-json
>{"created":"2023-04-06T13:53:42.420Z","text":"所有code都是用**pyannote.audio**执行的--[17], 提供了代码复现结果, 还提供了结果比如每个域的分析还有域的分类细节.\n","updated":"2023-04-06T13:53:42.420Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":16363,"end":16390},{"type":"TextQuoteSelector","exact":"pyannote.audio toolkit [17]","prefix":" using (and integrated into)the ","suffix":". A Github page1 providesinstruc"}]}]}
>```
>%%
>*%%PREFIX%%using (and integrated into)the%%HIGHLIGHT%% ==pyannote.audio toolkit [17]== %%POSTFIX%%. A Github page1 providesinstruc*
>%%LINK%%[[#^580vg1fz5tu|show annotation]]
>%%COMMENT%%
>所有code都是用**pyannote.audio**执行的--[17], 提供了代码复现结果, 还提供了结果比如每个域的分析还有域的分类细节.
>
>%%TAGS%%
>
^580vg1fz5tu


>%%
>```annotation-json
>{"created":"2023-04-06T13:56:05.267Z","text":"总结: 用了[11]的sincnet model, 还用了[12]的对抗神经网络, 同时去精确地提取了特征, 非常有效. 在对unseen领域的判别也好于其他.\n\n由此看出, 对某些域静音的办法应该是可行的","updated":"2023-04-06T13:56:05.267Z","document":{"title":"","link":[{"href":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a"}],"documentFingerprint":"07f60ca55e21724022f3610e6b902d9a"},"uri":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","target":[{"source":"urn:x-pdf:07f60ca55e21724022f3610e6b902d9a","selector":[{"type":"TextPositionSelector","start":16578,"end":16627},{"type":"TextQuoteSelector","exact":"learning of filters using the Sinc-Net model [11]","prefix":"CLUSIONSThis paper explores the ","suffix":", in conjunction with the use of"}]}]}
>```
>%%
>*%%PREFIX%%CLUSIONSThis paper explores the%%HIGHLIGHT%% ==learning of filters using the Sinc-Net model [11]== %%POSTFIX%%, in conjunction with the use of*
>%%LINK%%[[#^poc7kw4lr6j|show annotation]]
>%%COMMENT%%
>总结: 用了[11]的sincnet model, 还用了[12]的对抗神经网络, 同时去精确地提取了特征, 非常有效. 在对unseen领域的判别也好于其他.
>
>由此看出, 对某些域静音的办法应该是可行的
>%%TAGS%%
>
^poc7kw4lr6j

#文献笔记/vad #知识/科研/VAD #知识/模型/端对端 