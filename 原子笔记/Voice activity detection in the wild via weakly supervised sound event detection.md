---
annotation target: D:\apps\Obsidian库\Obsidian@simpread\pdfs for ob\Voice activity detection in the wild via weakly supervised sound event detection.pdf
---

#文献笔记/vad  #知识/科研/VAD 



>%%
>```annotation-json
>{"text":"本文提出了广义的vad模型, 叫做**GPVAD**, 提出了两种模型, **一种是full, 一种是binary**. 这种模型只需要在**clip级别**上训练, 对真实的语音准确率更高.\n\n本文将提出的模型和标准模型**VAD-C(使用CRNN)比较**, 发现vad-f的效果**在干净和合成语音都和C实力相当**, 且在帧级的**真实语音分类中比C更强**, 而轻量级的**B模型也能和C相当**(对于真实语音).\n\n**F基于527个audioset的sound events训练, 而B只区分语音和非语音**. 这里是指输入的数据包含speech类共有527个类, F是对它们全部进行训练, 而B是将除了speech类的类全部视为noise类进行训练.","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":341,"end":445},{"type":"TextQuoteSelector","exact":"Traditional supervised voice activity detection (VAD) methodswork well in clean and controlled scenarios","prefix":"ewu, kai.yu}@sjtu.edu.cnAbstract","suffix":", with performanceseverely degra"}]}],"created":"2023-04-15T11:31:30.724Z","updated":"2023-04-15T11:31:30.724Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%ewu, kai.yu}@sjtu.edu.cnAbstract%%HIGHLIGHT%% ==Traditional supervised voice activity detection (VAD) methodswork well in clean and controlled scenarios== %%POSTFIX%%, with performanceseverely degra*
>%%LINK%%[[#^mm0qf25vhum|show annotation]]
>%%COMMENT%%
>本文提出了广义的vad模型, 叫做**GPVAD**, 提出了两种模型, **一种是full, 一种是binary**. 这种模型只需要在**clip级别**上训练, 对真实的语音准确率更高.
>
>本文将提出的模型和标准模型**VAD-C(使用CRNN)比较**, 发现vad-f的效果**在干净和合成语音都和C实力相当**, 且在帧级的**真实语音分类中比C更强**, 而轻量级的**B模型也能和C相当**(对于真实语音).
>
>**F基于527个audioset的sound events训练, 而B只区分语音和非语音**. 这里是指输入的数据包含speech类共有527个类, F是对它们全部进行训练, 而B是将除了speech类的类全部视为noise类进行训练.
>%%TAGS%%
>
^mm0qf25vhum


>%%
>```annotation-json
>{"text":"早在13年, 就开始使用**神经网络做vad**了, 效果都有逐步提升, 并且**RNN和LSTM**可以更好地建模输入语音中的长时相关性.\n\n然而, 这些手段都**需要帧级的信息输入**, 这意味着训练语音**需要大量的合成语音**, 而**实际语音**总是包含各种各样的**特殊噪声**, 这是一个缺陷.\n\n**本文的重点**就是要让vad在真实语音表现得更好.","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":1982,"end":2031},{"type":"TextQuoteSelector","exact":"Deep learning approaches have been successfully a","prefix":"ion, and speaker verifica-tion.","suffix":"ppliedto VAD [1, 2, 3, 4]. For V"}]}],"created":"2023-04-15T11:53:06.034Z","updated":"2023-04-15T11:53:06.034Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%ion, and speaker verifica-tion.%%HIGHLIGHT%% ==Deep learning approaches have been successfully a== %%POSTFIX%%ppliedto VAD [1, 2, 3, 4]. For V*
>%%LINK%%[[#^mc5qc84ydda|show annotation]]
>%%COMMENT%%
>早在13年, 就开始使用**神经网络做vad**了, 效果都有逐步提升, 并且**RNN和LSTM**可以更好地建模输入语音中的长时相关性.
>
>然而, 这些手段都**需要帧级的信息输入**, 这意味着训练语音**需要大量的合成语音**, 而**实际语音**总是包含各种各样的**特殊噪声**, 这是一个缺陷.
>
>**本文的重点**就是要让vad在真实语音表现得更好.
>%%TAGS%%
>
^mc5qc84ydda


>%%
>```annotation-json
>{"text":"人工标记的真实语音的帧级标签是很少的, 为了**在noisy data training的同时探测语音成分**, 我们结合了**WSSED方法**--弱监督的sound event detection, 即语音成分识别, 也是**基于clip级别**的.\n\n","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":3234,"end":3301},{"type":"TextQuoteSelector","exact":"Atask to detect speech components while enabling noisy datatraining","prefix":"the language being spoken [8].","suffix":", is related to weakly-supervise"}]}],"created":"2023-04-15T12:22:00.122Z","updated":"2023-04-15T12:22:00.122Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%the language being spoken [8].%%HIGHLIGHT%% ==Atask to detect speech components while enabling noisy datatraining== %%POSTFIX%%, is related to weakly-supervise*
>%%LINK%%[[#^51443ny3jd8|show annotation]]
>%%COMMENT%%
>人工标记的真实语音的帧级标签是很少的, 为了**在noisy data training的同时探测语音成分**, 我们结合了**WSSED方法**--弱监督的sound event detection, 即语音成分识别, 也是**基于clip级别**的.
>
>
>%%TAGS%%
>
^51443ny3jd8


>%%
>```annotation-json
>{"created":"2023-04-15T12:32:59.854Z","text":"我们探究了两个问题, 并提出了解决方案, 我们的方案可以**在真实语音环境中表现良好**, 并且我们**减少了对训练数据的限制**.\n\n第二节中我们**回顾了WSSED**并说明如何将它转化为真实语音的vad; 第三节, 我们**介绍了GPVAD**的方法; 第四节我们介绍了**实验设置**并提供了**实施细节**; 第五结我们给出了**实验结果**; 第六节是一个**总结**.","updated":"2023-04-15T12:32:59.854Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":4036,"end":4111},{"type":"TextQuoteSelector","exact":"First, the framework is noise-robust and capa-ble of being deployed in wild","prefix":"e refer to twodistinct aspects: ","suffix":", real-world scenarios; Secondly"}]}]}
>```
>%%
>*%%PREFIX%%e refer to twodistinct aspects:%%HIGHLIGHT%% ==First, the framework is noise-robust and capa-ble of being deployed in wild== %%POSTFIX%%, real-world scenarios; Secondly*
>%%LINK%%[[#^6gwrx9grxoa|show annotation]]
>%%COMMENT%%
>我们探究了两个问题, 并提出了解决方案, 我们的方案可以**在真实语音环境中表现良好**, 并且我们**减少了对训练数据的限制**.
>
>第二节中我们**回顾了WSSED**并说明如何将它转化为真实语音的vad; 第三节, 我们**介绍了GPVAD**的方法; 第四节我们介绍了**实验设置**并提供了**实施细节**; 第五结我们给出了**实验结果**; 第六节是一个**总结**.
>%%TAGS%%
>
^6gwrx9grxoa


>%%
>```annotation-json
>{"text":"第二节, 就粗略介绍了下**半监督的WSSED**, 这是个**分类+定位**的任务, 这方面最近的进展对**语音事件边界判定**提升很大, 尤其是对**speech的检测**, 于是我们就借鉴来做vad,","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":5037,"end":5093},{"type":"TextQuoteSelector","exact":"on weakly-supervised SED (WSSED), a semi-supervised task","prefix":"p. In this work, we mainly focus","suffix":",which has only access to clip-l"}]}],"created":"2023-04-15T12:51:46.295Z","updated":"2023-04-15T12:51:46.295Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%p. In this work, we mainly focus%%HIGHLIGHT%% ==on weakly-supervised SED (WSSED), a semi-supervised task== %%POSTFIX%%,which has only access to clip-l*
>%%LINK%%[[#^qakpww3jbwn|show annotation]]
>%%COMMENT%%
>第二节, 就粗略介绍了下**半监督的WSSED**, 这是个**分类+定位**的任务, 这方面最近的进展对**语音事件边界判定**提升很大, 尤其是对**speech的检测**, 于是我们就借鉴来做vad,
>%%TAGS%%
>
^qakpww3jbwn


>%%
>```annotation-json
>{"created":"2023-04-15T13:13:57.208Z","text":"实验网络**采用了CRNN的架构**, GPVAD是在**clip级**上训练, 而相比较的**VAD-C则是在帧级**上训练.\n\n**VAD-F**是使用了**527个语音任务来分类**的, 一个语音可以同时属于好几个类, while **CRNN和VAD-B是采用2分类**去训练的.","updated":"2023-04-15T13:13:57.208Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":6436,"end":6518},{"type":"TextQuoteSelector","exact":" while GPVAD is trained clip-level labels, and VAD-C trained onframe-level labels.","prefix":"A CRNN architecture is utilized,","suffix":" Each Conv2d block represents a "}]}]}
>```
>%%
>*%%PREFIX%%A CRNN architecture is utilized,%%HIGHLIGHT%% ==while GPVAD is trained clip-level labels, and VAD-C trained onframe-level labels.== %%POSTFIX%%Each Conv2d block represents a*
>%%LINK%%[[#^lonsqmgwizk|show annotation]]
>%%COMMENT%%
>实验网络**采用了CRNN的架构**, GPVAD是在**clip级**上训练, 而相比较的**VAD-C则是在帧级**上训练.
>
>**VAD-F**是使用了**527个语音任务来分类**的, 一个语音可以同时属于好几个类, while **CRNN和VAD-B是采用2分类**去训练的.
>%%TAGS%%
>
^lonsqmgwizk


>%%
>```annotation-json
>{"text":"将**同一段语音和一个种类的噪声匹配**成一个组合, 这样的**L个组合**(噪声种类不同)形成一个**'bag'**$\\chi$, L<E, **这样建模的好处是**, 我们可以用clip级或者帧级的数据去训练.\n\n比如GPVF, 使用了E=527, L=405的类别去训练, 而GPVB显然只用了E=2, L=1去训练.\n\n显然**GPVF的计算量更大**, 但它在**复杂环境的表现也更好**, 因为它**学习了不同种类的噪声特性**, 而不是像GPVB一样, 单纯将所有噪声都认为同种噪声.","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":7664,"end":7686},{"type":"TextQuoteSelector","exact":"X = {x1,...,xl,...,xL}","prefix":"world sounds (e.g., Cat, Music).","suffix":"xl = (s,ul) (2)Our approach stem"}]}],"created":"2023-04-15T14:59:58.492Z","updated":"2023-04-15T14:59:58.492Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%world sounds (e.g., Cat, Music).%%HIGHLIGHT%% ==X = {x1,...,xl,...,xL}== %%POSTFIX%%xl = (s,ul) (2)Our approach stem*
>%%LINK%%[[#^vp61ushkju|show annotation]]
>%%COMMENT%%
>将**同一段语音和一个种类的噪声匹配**成一个组合, 这样的**L个组合**(噪声种类不同)形成一个**'bag'**$\chi$, L<E, **这样建模的好处是**, 我们可以用clip级或者帧级的数据去训练.
>
>比如GPVF, 使用了E=527, L=405的类别去训练, 而GPVB显然只用了E=2, L=1去训练.
>
>显然**GPVF的计算量更大**, 但它在**复杂环境的表现也更好**, 因为它**学习了不同种类的噪声特性**, 而不是像GPVB一样, 单纯将所有噪声都认为同种噪声.
>%%TAGS%%
>
^vp61ushkju


>%%
>```annotation-json
>{"text":"相比于WSSED, **增加了一个上采样**, 让时间的分辨率不变, 另外**使用了$L^P$池化**, 其中p=4.(没太懂)\n\n另外我们使用了clip级的数据进行训练, **因此我们需要一个对时域的池化函数**, 我们运用**后处理**将**概率转换为二分类**的标签, 并且**将非语音的标签丢弃**(没懂).","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":9339,"end":9381},{"type":"TextQuoteSelector","exact":"operation, such that the models’ time-res-","prefix":"been done:1. Add an upsampling","suffix":"olution remains constant. 2. Use"}]}],"created":"2023-04-16T01:27:34.178Z","updated":"2023-04-16T01:27:34.178Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%been done:1. Add an upsampling%%HIGHLIGHT%% ==operation, such that the models’ time-res-== %%POSTFIX%%olution remains constant. 2. Use*
>%%LINK%%[[#^rdl0k6583rc|show annotation]]
>%%COMMENT%%
>相比于WSSED, **增加了一个上采样**, 让时间的分辨率不变, 另外**使用了$L^P$池化**, 其中p=4.(没太懂)
>
>另外我们使用了clip级的数据进行训练, **因此我们需要一个对时域的池化函数**, 我们运用**后处理**将**概率转换为二分类**的标签, 并且**将非语音的标签丢弃**(没懂).
>%%TAGS%%
>
^rdl0k6583rc


>%%
>```annotation-json
>{"created":"2023-04-16T01:47:38.818Z","text":"GPVAD的**训练集**, 来自**Audioset**, 全是带噪语音--**10s的油管片段**, 有527个声音事件, 其中30%的录音是含有语音的, 这些含有语音的**片段也都是夹杂着其他声音事件**的, 对于GPVB来说, 其余的526个事件, 全部视为噪声事件.\n\n","updated":"2023-04-16T01:47:38.818Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":11218,"end":11249},{"type":"TextQuoteSelector","exact":"Our main GPVAD training dataset","prefix":" is shared by both ap-proaches. ","suffix":" is the “bal-anced” set provided"}]}]}
>```
>%%
>*%%PREFIX%%is shared by both ap-proaches.%%HIGHLIGHT%% ==Our main GPVAD training dataset== %%POSTFIX%%is the “bal-anced” set provided*
>%%LINK%%[[#^fovoxyjuxov|show annotation]]
>%%COMMENT%%
>GPVAD的**训练集**, 来自**Audioset**, 全是带噪语音--**10s的油管片段**, 有527个声音事件, 其中30%的录音是含有语音的, 这些含有语音的**片段也都是夹杂着其他声音事件**的, 对于GPVB来说, 其余的526个事件, 全部视为噪声事件.
>
>
>%%TAGS%%
>
^fovoxyjuxov


>%%
>```annotation-json
>{"created":"2023-04-16T01:52:09.863Z","text":"VAD-C是在帧级的Aurora+Switchboard的数据集上训练的, 有干净语音, 也有合成的带噪语音, ","updated":"2023-04-16T01:52:09.863Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":11796,"end":11851},{"type":"TextQuoteSelector","exact":"Our VAD-C model is trained on the Aurora 4 training set","prefix":" is never individually observed.","suffix":"extended by 15 hours of Switchbo"}]}]}
>```
>%%
>*%%PREFIX%%is never individually observed.%%HIGHLIGHT%% ==Our VAD-C model is trained on the Aurora 4 training set== %%POSTFIX%%extended by 15 hours of Switchbo*
>%%LINK%%[[#^clzorrkrxtn|show annotation]]
>%%COMMENT%%
>VAD-C是在帧级的Aurora+Switchboard的数据集上训练的, 有干净语音, 也有合成的带噪语音, 
>%%TAGS%%
>
^clzorrkrxtn


>%%
>```annotation-json
>{"text":"测试集, **使用了Aurora4的干净语音**, 合成的带噪语音使用**Aurora4+噪声**, 真实语音选用了**DCASE18**(这是个Audioset的子数据集)的开发集+测试集.**DCASE18**包含10个事件标签, 我们把它转换一下, 变成语音和非语音的边界.\n\n我们最后的**输出是二分类问题**, 把所有非语音标签的都视作非语音这一个分类.我们的**测试集中有干净语音和带噪语音**(带一种噪声的20%, 带多种噪声的11%)","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":12223,"end":12271},{"type":"TextQuoteSelector","exact":"Threedifferent evaluation scenarios are proposed","prefix":"asets are described in Table 1.","suffix":". First, we validateon the 40 mi"}]}],"created":"2023-04-16T01:53:48.233Z","updated":"2023-04-16T01:53:48.233Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%asets are described in Table 1.%%HIGHLIGHT%% ==Threedifferent evaluation scenarios are proposed== %%POSTFIX%%. First, we validateon the 40 mi*
>%%LINK%%[[#^2wz6bebn9ly|show annotation]]
>%%COMMENT%%
>测试集, **使用了Aurora4的干净语音**, 合成的带噪语音使用**Aurora4+噪声**, 真实语音选用了**DCASE18**(这是个Audioset的子数据集)的开发集+测试集.**DCASE18**包含10个事件标签, 我们把它转换一下, 变成语音和非语音的边界.
>
>我们最后的**输出是二分类问题**, 把所有非语音标签的都视作非语音这一个分类.我们的**测试集中有干净语音和带噪语音**(带一种噪声的20%, 带多种噪声的11%)
>%%TAGS%%
>
^2wz6bebn9ly


>%%
>```annotation-json
>{"created":"2023-04-16T02:00:41.505Z","text":"蓝色的是**DCASE18**的真实语音, 橙色是**Aurora4**的, 在fig2中比较.\n\n可见, **真实语音的说话duration平均更短**, 并且一个utterance中的**segments更多一些**.","updated":"2023-04-16T02:00:41.505Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":11087,"end":11128},{"type":"TextQuoteSelector","exact":"Aurora 4 (orange) and DCASE18 (blue) sets","prefix":"r utterance (right), betweenthe ","suffix":". Best viewedin color.proaches, "}]}]}
>```
>%%
>*%%PREFIX%%r utterance (right), betweenthe%%HIGHLIGHT%% ==Aurora 4 (orange) and DCASE18 (blue) sets== %%POSTFIX%%. Best viewedin color.proaches,*
>%%LINK%%[[#^kdp5xdts6w|show annotation]]
>%%COMMENT%%
>蓝色的是**DCASE18**的真实语音, 橙色是**Aurora4**的, 在fig2中比较.
>
>可见, **真实语音的说话duration平均更短**, 并且一个utterance中的**segments更多一些**.
>%%TAGS%%
>
^kdp5xdts6w


>%%
>```annotation-json
>{"text":"table1, 测试集全都是在帧级上进行的.","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":10319,"end":10324},{"type":"TextQuoteSelector","exact":"Frame","prefix":"0 hEvaluationAurora 4 (A) Clean","suffix":"40 minAurora 4 (B) Syn Frame 8."}]}],"created":"2023-04-16T02:07:01.081Z","updated":"2023-04-16T02:07:01.081Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%0 hEvaluationAurora 4 (A) Clean%%HIGHLIGHT%% ==Frame== %%POSTFIX%%40 minAurora 4 (B) Syn Frame 8.*
>%%LINK%%[[#^7szdhcsdbap|show annotation]]
>%%COMMENT%%
>table1, 测试集全都是在帧级上进行的.
>%%TAGS%%
>
^7szdhcsdbap


>%%
>```annotation-json
>{"text":"fig2, **DCASE18**和Aurorra4数据集的不同, 真实语音的**平均说话时长更短**, 一个utterrance中的**segments也更多**.","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":13130,"end":13189},{"type":"TextQuoteSelector","exact":"DCASE18 evaluationdatasets differ from the Aurora 4 dataset","prefix":"it can be seen in Figure 2, the","suffix":"in terms of averageduration spo"}]}],"created":"2023-04-16T05:57:10.123Z","updated":"2023-04-16T05:57:10.123Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%it can be seen in Figure 2, the%%HIGHLIGHT%% ==DCASE18 evaluationdatasets differ from the Aurora 4 dataset== %%POSTFIX%%in terms of averageduration spo*
>%%LINK%%[[#^326gs710tq|show annotation]]
>%%COMMENT%%
>fig2, **DCASE18**和Aurorra4数据集的不同, 真实语音的**平均说话时长更短**, 一个utterrance中的**segments也更多**.
>%%TAGS%%
>
^326gs710tq


>%%
>```annotation-json
>{"text":"测试过程的度量方式\n对帧级测试, 我们采用了**F1-macro, F1-micro指标, AUC指标和FER指标**.\n\n对segments级测试, 我们考虑**预测的标签段和真值的重合程度**--**Event F1**.","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":13326,"end":13343},{"type":"TextQuoteSelector","exact":"valuation Metrics","prefix":"utterance (3.87 vs. 2.08).4.2. E","suffix":"Frame-level For frame-level eval"}]}],"created":"2023-04-16T05:59:04.659Z","updated":"2023-04-16T05:59:04.659Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%utterance (3.87 vs. 2.08).4.2. E%%HIGHLIGHT%% ==valuation Metrics== %%POSTFIX%%Frame-level For frame-level eval*
>%%LINK%%[[#^a5cxdaj1ntq|show annotation]]
>%%COMMENT%%
>测试过程的度量方式
>对帧级测试, 我们采用了**F1-macro, F1-micro指标, AUC指标和FER指标**.
>
>对segments级测试, 我们考虑**预测的标签段和真值的重合程度**--**Event F1**.
>%%TAGS%%
>
^a5cxdaj1ntq


>%%
>```annotation-json
>{"text":"实验设置如下:\n使用**64维的对数梅尔频谱**作为特征, 每个特征由**2048点**的fft得到, **帧长为40ms, 帧移为20ms**, 对一个batch内的样本, 我们参考最长的那个样本对其它进行**补零**, 但我们的输出并不补零.(没懂细节)\n\n损失函数采用**交叉熵损失**.\n\n对时域的池化函数为$$y(e)=\\frac{\\sum_t^T y_t(e)^2}{\\sum_t^T y_t(e)}$$\n\n前面说到因为我们使用clip级别的数据去训练, 所以我们需要这个池化, 不是很理解这个逻辑. 我看**table1的测试集都是帧级**的, 所以它是**通过clip级的训练数据最后得到对帧级的分类**? 那么池化的作用体现在哪里.","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":14004,"end":14069},{"type":"TextQuoteSelector","exact":"used 64-dimensional log-Mel power spectrograms (LMS) in this work","prefix":"ure extraction, all experiments","suffix":".Each LMS sample was extracted b"}]}],"created":"2023-04-16T06:01:38.020Z","updated":"2023-04-16T06:01:38.020Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%ure extraction, all experiments%%HIGHLIGHT%% ==used 64-dimensional log-Mel power spectrograms (LMS) in this work== %%POSTFIX%%.Each LMS sample was extracted b*
>%%LINK%%[[#^b1iciqzmjkk|show annotation]]
>%%COMMENT%%
>实验设置如下:
>使用**64维的对数梅尔频谱**作为特征, 每个特征由**2048点**的fft得到, **帧长为40ms, 帧移为20ms**, 对一个batch内的样本, 我们参考最长的那个样本对其它进行**补零**, 但我们的输出并不补零.(没懂细节)
>
>损失函数采用**交叉熵损失**.
>
>对时域的池化函数为$$y(e)=\frac{\sum_t^T y_t(e)^2}{\sum_t^T y_t(e)}$$
>
>前面说到因为我们使用clip级别的数据去训练, 所以我们需要这个池化, 不是很理解这个逻辑. 我看**table1的测试集都是帧级**的, 所以它是**通过clip级的训练数据最后得到对帧级的分类**? 那么池化的作用体现在哪里.
>%%TAGS%%
>
^b1iciqzmjkk


>%%
>```annotation-json
>{"created":"2023-04-16T06:48:00.561Z","text":"GPV的训练: 将训练集分为**90%作为真正的训练集**, **10%作为held-out**集, 使用**Adam优化**进行学习, 初始**学习率**为**1e-4**, **batch size是64**.\n\n**我的理解**: 一个batch后, 算一个loss, 通过这个loss优化参数, 再作用到held-out集上看看效果(也能算出一个loss来),以此循环. 经过7个epoch之后, 如果heldout集上的loss已经不再降低, 那么就停止训练.","updated":"2023-04-16T06:48:00.561Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":15049,"end":15104},{"type":"TextQuoteSelector","exact":"Adam optimization with a starting learning rate of 1e−4","prefix":"s from each label. Traininguses ","suffix":",a batch size of 64, and termina"}]}]}
>```
>%%
>*%%PREFIX%%s from each label. Traininguses%%HIGHLIGHT%% ==Adam optimization with a starting learning rate of 1e−4== %%POSTFIX%%,a batch size of 64, and termina*
>%%LINK%%[[#^7kkiwci5xfx|show annotation]]
>%%COMMENT%%
>GPV的训练: 将训练集分为**90%作为真正的训练集**, **10%作为held-out**集, 使用**Adam优化**进行学习, 初始**学习率**为**1e-4**, **batch size是64**.
>
>**我的理解**: 一个batch后, 算一个loss, 通过这个loss优化参数, 再作用到held-out集上看看效果(也能算出一个loss来),以此循环. 经过7个epoch之后, 如果heldout集上的loss已经不再降低, 那么就停止训练.
>%%TAGS%%
>
^7kkiwci5xfx


>%%
>```annotation-json
>{"created":"2023-04-16T06:53:18.008Z","text":"VAD-C的训练, **batch size为20**, 然而我们**不计算补的帧的loss**(没懂), 学习率**1e-5**, **SGD**用作优化, 训练所用的标签是由**Kaldi的ASR HMM模型**生成的.","updated":"2023-04-16T06:53:18.008Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":15225,"end":15266},{"type":"TextQuoteSelector","exact":"AD-C training utilizes a batch size of 20","prefix":" on the held-out dataset.VAD-C V","suffix":", whereasthe loss (Equation (3))"}]}]}
>```
>%%
>*%%PREFIX%%on the held-out dataset.VAD-C V%%HIGHLIGHT%% ==AD-C training utilizes a batch size of 20== %%POSTFIX%%, whereasthe loss (Equation (3))*
>%%LINK%%[[#^72pnvs199dk|show annotation]]
>%%COMMENT%%
>VAD-C的训练, **batch size为20**, 然而我们**不计算补的帧的loss**(没懂), 学习率**1e-5**, **SGD**用作优化, 训练所用的标签是由**Kaldi的ASR HMM模型**生成的.
>%%TAGS%%
>
^72pnvs199dk


>%%
>```annotation-json
>{"text":"**后处理**是用来**通过$y_t(e)$获得硬标签**的, 我们采用了**双阈值方法--[9, 14]**, 这里采用的**双阈值为0.1和0.5**","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":15571,"end":15589},{"type":"TextQuoteSelector","exact":" obtain hard label","prefix":"cessing is re-quired in order to","suffix":"s from class-wise probabilityseq"}]}],"created":"2023-04-16T07:00:53.775Z","updated":"2023-04-16T07:00:53.775Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}
>```
>%%
>*%%PREFIX%%cessing is re-quired in order to%%HIGHLIGHT%% ==obtain hard label== %%POSTFIX%%s from class-wise probabilityseq*
>%%LINK%%[[#^e3ga8cd3vd6|show annotation]]
>%%COMMENT%%
>**后处理**是用来**通过$y_t(e)$获得硬标签**的, 我们采用了**双阈值方法--[9, 14]**, 这里采用的**双阈值为0.1和0.5**
>%%TAGS%%
>
^e3ga8cd3vd6


>%%
>```annotation-json
>{"created":"2023-04-16T07:16:57.556Z","text":"结论见table2, 对于**干净和合成语音**, 都是**VAD-C的结果更好**; \n但对于**真实语音**, **GPV-B的效果和VAD-C的效果相当**, 同时**GPV-F的效果要好于VAD-C**的效果.","updated":"2023-04-16T07:16:57.556Z","document":{"title":"","link":[{"href":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896"}],"documentFingerprint":"ca897bbd16cef1c76a2db72494c91896"},"uri":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","target":[{"source":"urn:x-pdf:ca897bbd16cef1c76a2db72494c91896","selector":[{"type":"TextPositionSelector","start":16904,"end":16934},{"type":"TextQuoteSelector","exact":"Table 2: Best achieved results","prefix":"V-F 83.50 84.53 91.80 15.47 44.8","suffix":" on each respective evaluation c"}]}]}
>```
>%%
>*%%PREFIX%%V-F 83.50 84.53 91.80 15.47 44.8%%HIGHLIGHT%% ==Table 2: Best achieved results== %%POSTFIX%%on each respective evaluation c*
>%%LINK%%[[#^hlipsj9bwe9|show annotation]]
>%%COMMENT%%
>结论见table2, 对于**干净和合成语音**, 都是**VAD-C的结果更好**; 
>但对于**真实语音**, **GPV-B的效果和VAD-C的效果相当**, 同时**GPV-F的效果要好于VAD-C**的效果.
>%%TAGS%%
>
^hlipsj9bwe9
