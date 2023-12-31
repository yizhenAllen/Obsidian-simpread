#科研/reference 
# 1 Voice Activity Detection. Fundamentals and Speech Recognition System Robustness
## 1.1 introduction
影响大多数语音处理系统的一个重要缺点是环境噪声及其对系统性能的有害影响。 这种系统的例子有新的无线通信语音服务或数字助听器。在语音识别中，仍然存在技术障碍阻止这种系统满足现代应用的需求。 已经开发了许多降噪技术来减轻噪声对系统性能的影响，并且通常需要对通过精确语音活动检测器 (VAD) 获得的噪声统计数据进行估计。语音/非语音检测是语音中尚未解决的问题 处理和影响众多应用，包括鲁棒语音识别（Karray 和 Marting，2003 年 Ramirez 等人 2003 年）、不连续传输（ITU，1996 年；ETSI，1999 年）、互联网上的实时语音传输（Sangwan 等人，2002 年）或组合降噪 和电话环境中的回声消除方案（Basbug 等人，2004 年；Gustafsson 等人，2002 年）语音/非语音分类任务并不像看起来那么简单，并且大多数 VAD 算法在背景噪声水平增加时失败 . 在过去的十年中，许多研究人员开发了不同的策略来检测噪声信号上的语音（Sohn 等人，1999 年；Cho 和 Kondoz，2001 年；Gazor 和 Zhang，2003 年；Armani 等人，2003 年），并评估了 VAD 有效性的影响 关于语音处理系统的性能（Bouquin-Jeannes 和 Faucon，1995）。 大多数方法都集中在鲁棒算法的开发上，特别注意噪声鲁棒特征和决策规则的推导和研究（Woo 等人，2000 年；Li 等人，2002 年：Marzinzik 和 Kollmeier，2002 年）。 不同的 VAD 方法包括基于能量阈值 (Woo et al, 2000)、基音检测 (Chengalvarayan, 1999)、频谱分析 (Marzinzik and Kollmeier, 2002)、过零率 (ITU,1996)、周期性测量 (Tucker, 1992) 、LPC 残差域中的高阶统计（Nemer 等人，2001 年）或不同特征的组合（ITU，1993 年；ETSI，1999 年，Tanyer 和 Ozer，2000 年）。本章展示了对语音活动检测中主要挑战的全面近似， 在对现有技术的完整审查和通常使用的评估框架中报告的不同解决方案。 展示并讨论了 VAD 在语音编码、语音增强和鲁棒语音识别系统中的应用。 描述了三种不同的 VAD 方法，并与标准化和比较.

## 1.2 application
VAD 用于语音处理的许多领域。 最近，文献中描述了 VAD 方法用于多种应用，包括移动通信服务（Freeman 等人，1989 年）、互联网上的实时语音传输（Sangwan 等人，2002 年）或数字助听器的降噪（ltoh 和 水岛，1997）。 例如，VAD 通过使用不连续传输 (DTX) 模式在现代移动电信系统中实现静音压缩，从而降低平均比特率。 许多实际应用，例如全球移动通信系统 (GSM) 电话，使用静音检测和舒适噪声注入来提高编码效率。 本节简要介绍语音处理编码、增强和识别中最重要的 VAD 应用。

### 1.2.1 语音编码VAD
广泛应用于语音通信领域，以实现高语音编码效率和低比特率传输。 静音检测和舒适噪声生成的概念导致了双模式语音编码技术。语音编解码器的不同操作模式是：i) 主动语音编解码器，以及 i) 静音抑制和舒适噪声生成模式。 国际电信联盟（ITU）采用了一种称为 G.729 的长途电话质量语音编码算法，与 DTX 模式下的 VAD 模块结合使用。图 1 显示了双模式语音编解码器的框图。全速率语音编码器在运行期间运行 活动语音语音，但针对非活动语音信号采用了不同的编码方案，使用更少的比特并导致更高的总体平均压缩比。例如，建议 G.729 附件 B（ITU，1996）使用由以下内容组成的特征向量 线性预测 (LP) 频谱、全频带能量、低频带（0 至 1 KHz）能量和过零率 (ZCR)。该标准是在法国电信、舍布鲁克大学的研究人员的合作下开发的 、NTT 和 AT&T 贝尔实验室以及 VAD 的有效性在主观语音质量和比特率节省方面进行了评估（Benyassine 等人，1997）客观性能测试也通过手动标记大型语音数据库并评估正确识别 浊音、清音、静默和过渡期 DTX 的另一个标准是由特殊移动组 (SMG) 为 GSM 系统开发的 ETSI（自适应多速率）AMR 语音编码器（ETSI，1999）。 该标准为数字蜂窝电信系统中使用的 VAD 指定了两个选项。在选项 1 中，信号通过滤波器组并计算每个频带中的信号电平。 SNR 的度量与音调检测器、音调检测器和相关复信号分析模块的输出一起用于做出 VAD 决策。 原始 VAD 的增强版本是 AMR 选项 2 VAD，它使用语音编码器的参数，并且比 AMR1 和 G.729 更能抵抗环境噪声。 双模式语音传输在数字语音编码中实现了显着的比特率降低，因为在基于电话的通信中，大约 60% 的时间传输信号仅包含静音。

### 语音识别领域

语音识别系统的性能受语音信号质量的强烈影响。这些系统中的大多数基于使用培训语音数据库训练的复杂隐藏模型（HMM）。训练条件与测试条件之间的不匹配对这些系统的准确性产生了深远的影响，并代表了它们在嘈杂环境中运行的障碍。图2显示了当ETSI建议（ETSI，2000）不包括噪声补偿算法用作特征提取过程时，Aurora2数据库和语音识别任务的降解词的降级示例。请注意，当使用干净的语音训练HMM时，当背景噪声水平增加时，识别器性能会迅速降低。当使用干净和嘈杂的语音记录培训HMM时，将获得更好的结果。

VAD是一种非常有用的技术，用于提高在这些情况下工作的语音识别系统的性能。VAD模块在功能提取过程中的大多数语音识别系统中都用于语音增强。为了应用语音增强算法（光谱减法或Wiener滤波器），估算了非语音期间的噪声统计数据，例如其光谱。另一方面，非语音框架引言（FD）也是语音识别中经常使用的技术，可减少噪声引起的插入误差的数量。它包括从语音识别器的输入中删除非语言时期（基于VAD决定）。由于噪声可能是高度不匹配训练/测试条件下可能是严重的误差源，这减少了插入错误的数量。图3显示了典型的稳健语音识别系统，其中包含频谱降低噪声和非语音框架的示例。应用语音增强过程后，将MEL频率曲线系数及其一阶和二阶导数逐帧计算，以形成适合识别的特征向量。图4显示了语音识别系统提供的改进，该语音识别系统纳入了基于Wiener滤波器的增强功能提取过程中（Ramirez等，2005）中介绍的VAD，该过程基于Wiener滤波器和非语音框架掉落，用于Aurora 2数据库和任务。（ETSI，2000年）的相对改善约为27.17％，在清洁状况训练/测试中为60.31％。

# vad算法部分
## 问题描述
VAD问题认为在嘈杂的信号中检测语音的存在。VAD决策通常基于特征向量X。假设语音信号和噪声是加性的，VAD模块必须决定两个假设：
![[Pasted image 20230523172553.png]]

## 特征提取
特征提取过程的目的是计算适合检测的有判别力的语音特征。在这种背景下，已经研究了许多鲁棒语音特征。

特征提取过程的目的是计算适合检测的判别语音特征。在这种情况下，已经研究了许多强大的语音特征。不同的方法包括：i）全频带和子频带能量（Woo 等人，2000），ii）语音和背景噪声之间的频谱发散测量（Marzinzik 和 Kollmeier， 2002), iii) 音调估计 (Tucker, 1992), iv) 过零率 (Rabiner et al.,1975), v) 高阶统计 (Nemer et al. 2001; Ramírez et al., 2006a; Górriz et等人，2006a；拉米雷斯等人，2007 年）。大多数VAD方法都是基于当前的观察（帧），不考虑上下文信息。然而，使用长期语音信息 (Ramirez et al., 2004a; Ramirez et al. 2005a) 已经显示出在高噪声环境中检测语音存在的显着优势。

## 决策规则
决策模块定义了用于将类别（语音或静音）分配给特征向量x的规则或方法。Sohn等人（Sohn等人，1999）提出了一种基于涉及单个观测向量的统计似然比测试（LRT）的鲁棒VAD算法。（Sohn等人，1999年）。该方法考虑了两个假设检验，其中使错误概率最小化的最优决策规则是贝叶斯分类器。给定要分类的观测向量，问题简化为选择具有最大后验概率的类别（H0或H1）
![[Pasted image 20230523172933.png]]

使用贝叶斯规则导致统计似然比测试：
![[Pasted image 20230523173002.png]]
通常使用Ephraim和Malah最小均方误差（MMSE）估计器来估计（Ephraim and Malah，1984）。

VAD的几种方法基于欧几里得距离（Gorriz等人，2006b）、Itakura Saito和Kullback-Leibler散度（Ramírez等人，2004b）等距离度量来制定决策规则。其他技术包括模糊逻辑（Beritelli等人，2002）、支持向量机（SVM）（Ramírez等人，2006b）和遗传算法（Estevez等人，2005）。

## 3种当时比较热门的vad算法介绍