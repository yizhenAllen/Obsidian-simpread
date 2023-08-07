---
annotation target: D:/apps/Obsidian库/Obsidian@simpread/pdfs for ob/AHYBRIDCNN-BILSTMVOICEACTIVITYDETECTOR.pdf
---

>%%
>```annotation-json
>{"created":"2023-04-09T13:05:18.202Z","text":"CNN和BiLSTM框架融合做的端对端的vad模型。\n\n比较轻量级，让模型在糟糕的资源下也有好的表现。\n\n使用了嵌套的K-fold交叉验证的方法去探索超参空间\n\nBiLSTM层比单向的LSTM效果好，我们的小模型也和大模型有不相上下的能力，尤其是在严苛的噪声环境下","updated":"2023-04-09T13:05:18.202Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":331,"end":424},{"type":"TextQuoteSelector","exact":"network (CNN) and bidirectional long short-term memory(BiLSTM) layers trained in an end-to-en","prefix":"rating both convolutional neural","suffix":"d manner. In addi-tion, we focus"}]}]}
>```
>%%
>*%%PREFIX%%rating both convolutional neural%%HIGHLIGHT%% ==network (CNN) and bidirectional long short-term memory(BiLSTM) layers trained in an end-to-en== %%POSTFIX%%d manner. In addi-tion, we focus*
>%%LINK%%[[#^w8axat3nomg|show annotation]]
>%%COMMENT%%
>CNN和BiLSTM框架融合做的端对端的vad模型。
>
>比较轻量级，让模型在糟糕的资源下也有好的表现。
>
>使用了嵌套的K-fold交叉验证的方法去探索超参空间
>
>BiLSTM层比单向的LSTM效果好，我们的小模型也和大模型有不相上下的能力，尤其是在严苛的噪声环境下
>%%TAGS%%
>
^w8axat3nomg


>%%
>```annotation-json
>{"created":"2023-04-09T13:18:28.231Z","text":"讲讲历史发展，没什么好说的，9到12是用SVM的，13到16是用神经网络的，分别是DBN，DNN，RNN，DNN\n\n","updated":"2023-04-09T13:18:28.231Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":3381,"end":3553},{"type":"TextQuoteSelector","exact":"Support vector machine (SVM) classifiers have been exten-sively used to this purpose [9, 10, 11, 12], and more recentlyvarious neural network architectures [13, 14, 15, 16]","prefix":"entify speech/non-speech frames.","suffix":".Our work is part of a broader p"}]}]}
>```
>%%
>*%%PREFIX%%entify speech/non-speech frames.%%HIGHLIGHT%% ==Support vector machine (SVM) classifiers have been exten-sively used to this purpose [9, 10, 11, 12], and more recentlyvarious neural network architectures [13, 14, 15, 16]== %%POSTFIX%%.Our work is part of a broader p*
>%%LINK%%[[#^ch0gn5mif6h|show annotation]]
>%%COMMENT%%
>讲讲历史发展，没什么好说的，9到12是用SVM的，13到16是用神经网络的，分别是DBN，DNN，RNN，DNN
>
>
>%%TAGS%%
>
^ch0gn5mif6h


>%%
>```annotation-json
>{"text":"讲了之前的工作[18]，这篇工作是受到了[19]和[20]的启发，19讲了cnn在大规模语音分类的应用，20讲了基于cnn的移动端事实vad系统。\n\n而18是**结合cnn和gmm-hmm**的一个vad系统，使用了gmm-hmm的平滑框架，这个框架是为了去解决因为缺少对时域的建模而产生的帧丢失和帧插入的现象。","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":3888,"end":4043},{"type":"TextQuoteSelector","exact":"we introduced aVAD based on a convolutional neural network (CNN) classifierfollowed by Gaussian mixture model-hidden Markov model(GMM-HMM) smoothing scheme","prefix":"peech labels. In previous work,","suffix":"[18]. The promising perfor-manc"}]}],"created":"2023-04-09T13:29:23.654Z","updated":"2023-04-09T13:29:23.654Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}
>```
>%%
>*%%PREFIX%%peech labels. In previous work,%%HIGHLIGHT%% ==we introduced aVAD based on a convolutional neural network (CNN) classifierfollowed by Gaussian mixture model-hidden Markov model(GMM-HMM) smoothing scheme== %%POSTFIX%%[18]. The promising perfor-manc*
>%%LINK%%[[#^ib1a7pz3ja|show annotation]]
>%%COMMENT%%
>讲了之前的工作[18]，这篇工作是受到了[19]和[20]的启发，19讲了cnn在大规模语音分类的应用，20讲了基于cnn的移动端事实vad系统。
>
>而18是**结合cnn和gmm-hmm**的一个vad系统，使用了gmm-hmm的平滑框架，这个框架是为了去解决因为缺少对时域的建模而产生的帧丢失和帧插入的现象。
>%%TAGS%%
>
^ib1a7pz3ja


>%%
>```annotation-json
>{"created":"2023-04-09T13:34:35.161Z","text":"这次我们是全新版本，结合了cnn和bilstm的vad，就不用像之前那样采取平滑机制了，我们直接在时域进行端对端的训练，我们探索了超参数空间，对比了单向和双向的lstm layer的表现，并将我们的系统和3个强大的基线系统相比较了。","updated":"2023-04-09T13:34:35.161Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":4379,"end":4467},{"type":"TextQuoteSelector","exact":"novel convolutional neural network-bidirectional long short-term memory (CNN-BiLSTM) VAD","prefix":"heme. Inthis paper we present a ","suffix":",which removes the need for such"}]}]}
>```
>%%
>*%%PREFIX%%heme. Inthis paper we present a%%HIGHLIGHT%% ==novel convolutional neural network-bidirectional long short-term memory (CNN-BiLSTM) VAD== %%POSTFIX%%,which removes the need for such*
>%%LINK%%[[#^j6d8yjww3r|show annotation]]
>%%COMMENT%%
>这次我们是全新版本，结合了cnn和bilstm的vad，就不用像之前那样采取平滑机制了，我们直接在时域进行端对端的训练，我们探索了超参数空间，对比了单向和双向的lstm layer的表现，并将我们的系统和3个强大的基线系统相比较了。
>%%TAGS%%
>
^j6d8yjww3r


>%%
>```annotation-json
>{"created":"2023-04-09T13:47:24.281Z","text":"使用的数据库是公开的，160个segments，每个15分钟，一共40小时，有人为分类的4个标签，基本上都是带噪语音，非语音大概占了一半，基本上都是原生态噪声（电影片段），有多种语言，总的来说噪声多样，且信噪比比较低，干净语音占比十分之一。\n\nsnr的测量是使用time-frequency-masking-based的语音增强神经网络估计的。","updated":"2023-04-09T13:47:24.281Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":5971,"end":6052},{"type":"TextQuoteSelector","exact":"This dataset provides a diverse set of speakers, acousticconditions and languages","prefix":"ing a frame-level majority vote.","suffix":". Furthermore, movie data provid"}]}]}
>```
>%%
>*%%PREFIX%%ing a frame-level majority vote.%%HIGHLIGHT%% ==This dataset provides a diverse set of speakers, acousticconditions and languages== %%POSTFIX%%. Furthermore, movie data provid*
>%%LINK%%[[#^v1k38af4mvo|show annotation]]
>%%COMMENT%%
>使用的数据库是公开的，160个segments，每个15分钟，一共40小时，有人为分类的4个标签，基本上都是带噪语音，非语音大概占了一半，基本上都是原生态噪声（电影片段），有多种语言，总的来说噪声多样，且信噪比比较低，干净语音占比十分之一。
>
>snr的测量是使用time-frequency-masking-based的语音增强神经网络估计的。
>%%TAGS%%
>
^v1k38af4mvo


>%%
>```annotation-json
>{"created":"2023-04-09T13:56:19.389Z","text":"22提出了cnn和lstm结合的深度神经网络，在语音识别更强。被称作CLDNN模型。**在23被用于vad**，当时是用的一维cnn，单向的lstm，这篇文章用的是2维cnn，双向的lstm，","updated":"2023-04-09T13:56:19.389Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":6635,"end":6743},{"type":"TextQuoteSelector","exact":" hybrid convolutional, long short-term memory, deepneural network (CLDNN) model was first introduced in [22]","prefix":"NN-BiLSTM hybrid model forVAD. A","suffix":"and found to outperform previous"}]}]}
>```
>%%
>*%%PREFIX%%NN-BiLSTM hybrid model forVAD. A%%HIGHLIGHT%% ==hybrid convolutional, long short-term memory, deepneural network (CLDNN) model was first introduced in [22]== %%POSTFIX%%and found to outperform previous*
>%%LINK%%[[#^da610mr9qe7|show annotation]]
>%%COMMENT%%
>22提出了cnn和lstm结合的深度神经网络，在语音识别更强。被称作CLDNN模型。**在23被用于vad**，当时是用的一维cnn，单向的lstm，这篇文章用的是2维cnn，双向的lstm，
>%%TAGS%%
>
^da610mr9qe7


>%%
>```annotation-json
>{"created":"2023-04-09T14:22:07.998Z","text":"传入的是32*32的语谱图，使用了两个二维cnn卷积层，都是用relu函数非线性化，然后拉长，使用relu激发传入dense层，再用sigmoid函数tanh函数传入bilstm层，然后再传入softmax层去分类。\n\n使用tensorflow还有keras，所有的训练都使用了Adam的随机优化方法[24]，使用了二进制交叉熵损失函数。","updated":"2023-04-09T14:22:07.998Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":7319,"end":7359},{"type":"TextQuoteSelector","exact":"two two-dimensional convolutional layers","prefix":"hown in Figure 1.It consists of ","suffix":", withrectified linear unit (ReL"}]}]}
>```
>%%
>*%%PREFIX%%hown in Figure 1.It consists of%%HIGHLIGHT%% ==two two-dimensional convolutional layers== %%POSTFIX%%, withrectified linear unit (ReL*
>%%LINK%%[[#^31m64gmo9qv|show annotation]]
>%%COMMENT%%
>传入的是32*32的语谱图，使用了两个二维cnn卷积层，都是用relu函数非线性化，然后拉长，使用relu激发传入dense层，再用sigmoid函数tanh函数传入bilstm层，然后再传入softmax层去分类。
>
>使用tensorflow还有keras，所有的训练都使用了Adam的随机优化方法[24]，使用了二进制交叉熵损失函数。
>%%TAGS%%
>
^31m64gmo9qv


>%%
>```annotation-json
>{"created":"2023-04-09T14:30:50.503Z","text":"语谱图是取了对数梅尔滤波的短时傅里叶变换的32维特征，每帧10ms，堆叠在一起一共320ms","updated":"2023-04-09T14:30:50.503Z","document":{"title":"","link":[{"href":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3"}],"documentFingerprint":"1dbefcab71b1a1cc99f8cc835ffee6c3"},"uri":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","target":[{"source":"urn:x-pdf:1dbefcab71b1a1cc99f8cc835ffee6c3","selector":[{"type":"TextPositionSelector","start":8759,"end":8785},{"type":"TextQuoteSelector","exact":"og mel-filterbank energies","prefix":"hown in Figure 1.The choice of l","suffix":" was informed by[25], where it w"}]}]}
>```
>%%
>*%%PREFIX%%hown in Figure 1.The choice of l%%HIGHLIGHT%% ==og mel-filterbank energies== %%POSTFIX%%was informed by[25], where it w*
>%%LINK%%[[#^gssmdpg08mg|show annotation]]
>%%COMMENT%%
>语谱图是取了对数梅尔滤波的短时傅里叶变换的32维特征，每帧10ms，堆叠在一起一共320ms
>%%TAGS%%
>
^gssmdpg08mg

#文献笔记/vad