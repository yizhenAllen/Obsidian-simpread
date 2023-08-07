---
title: "1_ 引言 — 动手学深度学习 2_0_0 documentation"
alias: 
  - "1_ 引言 — 动手学深度学习 2_0_0 documentation"
created-date: 2023-04-16T21:07:43+0800
type: Simpread
banner: "https://zh-v2.d2l.ai/_images/wake-word.svg "
banner_icon: 🔖
tag: 
idx: 44
---

# 1_ 引言 — 动手学深度学习 2_0_0 documentation

> [!example]- [🧷内部链接](<http://localhost:7026/unread/44>) [🌐外部链接](<https://zh-v2.d2l.ai/chapter_introduction/index.html>)    
> URI:: [🧷](<http://localhost:7026/unread/44>) [🌐](<https://zh-v2.d2l.ai/chapter_introduction/index.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/44>)

%%
> [!example]+ **Comments**  
> ```dataview
> TABLE 
>     WITHOUT ID
>     link(Source, dateformat(date(Source), "yyyy-MM-dd")) as Date___, 
>     regexreplace(rows.Comments,"^@@\[\[.+?\]\]\s","") as "Comments"
> FROM "journals"
> WHERE  contains(cmnt, this.file.name)
> FLATTEN cmnt as Comments
> WHERE contains(Comments, this.file.name)
> GROUP BY file.link as Source
> SORT rows.file.day desc
> ```
>  **Description**:: 时至今日，人们常用的计算机程序几乎都是软件开发人员从零编写的。
%%

> [!md] Metadata  
> **标题**:: [1_ 引言 — 动手学深度学习 2_0_0 documentation](https://zh-v2.d2l.ai/chapter_introduction/index.html)  
> **日期**:: [[2023-04-16]]  

## Annotations


> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650461930>) [🌐](<http://localhost:7026/reading/44#id=1681650461930>)   
> 那么到底什么是参数呢？  
> 参数可以被看作旋钮，旋钮的转动可以调整程序的行为。  
> 任一调整参数后的程序被称为_模型_（model）。  
> 通过操作参数而生成的所有不同程序（输入 - 输出映射）的集合称为 “模型族”。  
> 使用数据集来选择参数的元程序被称为_学习算法_（learning algorithm）。
> ^sran-1681650461930
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650485367>) [🌐](<http://localhost:7026/reading/44#id=1681650485367>)   
> 开始用机器学习算法解决问题之前，我们必须精确地定义问题，确定_输入_（input）和_输出_（output）的性质，并选择合适的模型族。
> ^sran-1681650485367
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650604873>) [🌐](<http://localhost:7026/reading/44#id=1681650604873>)   
> 由于这里的唤醒词是任意选择的自然语言，因此我们可能需要一个足够丰富的模型族，使模型多元化。
> ^sran-1681650604873
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650647320>) [🌐](<http://localhost:7026/reading/44#id=1681650647320>)   
> 模型族的另一个模型只在听到 “Hey Siri” 这个词时发出“是”。  
> 理想情况下，同一个模型族应该适合于 “Alexa” 识别和“Hey  
> Siri”识别，因为从直觉上看，它们似乎是相似的任务。
> ^sran-1681650647320
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650656413>) [🌐](<http://localhost:7026/reading/44#id=1681650656413>)   
> 然而，如果我们想处理完全不同的输入或输出，比如：从图像映射到字幕，或从英语映射到中文，可能需要一个完全不同的模型族。
> ^sran-1681650656413
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650693623>) [🌐](<http://localhost:7026/reading/44#id=1681650693623>)   
> 在机器学习中，_学习_（learning）是一个训练模型的过程。  
> 通过这个过程，我们可以发现正确的参数集，从而使模型强制执行所需的行为。  
> 换句话说，我们用数据_训练_（train）模型。
> ^sran-1681650693623
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650728580>) [🌐](<http://localhost:7026/reading/44#id=1681650728580>)   
> 训练过程通常包含如下步骤：
> 
>   
> 
>   
> 2.  从一个随机初始化参数的模型开始，这个模型基本没有 “智能”；
>     
>   
> 4.  获取一些数据样本（例如，音频片段以及对应的是或否标签）；
>     
>   
> 6.  调整参数，使模型在这些样本中表现得更好；
>     
>   
> 8.  重复第（2）步和第（3）步，直到模型在任务中的表现令人满意。
>     
>   
> 
>   
> 
>
> ^sran-1681650728580
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650730338>) [🌐](<http://localhost:7026/reading/44#id=1681650730338>)   
> ![](https://zh-v2.d2l.ai/_images/ml-loop.svg)
> ^sran-1681650730338
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650845567>) [🌐](<http://localhost:7026/reading/44#id=1681650845567>)   
> 这种 “通过用数据集来确定程序行为” 的方法可以被看作_用数据编程_（programming  
> with data）。
> ^sran-1681650845567
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650868914>) [🌐](<http://localhost:7026/reading/44#id=1681650868914>)   
> 无论什么类型的机器学习问题，都会遇到这些组件：
> 
>   
> 
>   
> 2.  可以用来学习的_数据_（data）；
>     
>   
> 4.  如何转换数据的_模型_（model）；
>     
>   
> 6.  一个_目标函数_（objective function），用来量化模型的有效性；
>     
>   
> 8.  调整模型参数以优化目标函数的_算法_（algorithm）。
>
> ^sran-1681650868914
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650944236>) [🌐](<http://localhost:7026/reading/44#id=1681650944236>)   
> 每个数据集由一个个_样本_（example,  
> sample）组成，大多时候，它们遵循独立同分布 (independently and identically  
> distributed, i.i.d.)。 样本有时也叫做_数据点_（data  
> point）或者_数据实例_（data  
> instance），通常每个样本由一组称为_特征_（features，或_协变量_（covariates））的属性组成。
> ^sran-1681650944236
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681650953582>) [🌐](<http://localhost:7026/reading/44#id=1681650953582>)   
> 监督学习问题中，要预测的是一个特殊的属性，它被称为_标签_（label，或_目标_（target））。
> ^sran-1681650953582
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651216174>) [🌐](<http://localhost:7026/reading/44#id=1681651216174>)   
> 特征类别数量都是相同的时候，其特征向量是固定长度的，这个长度被称为数据的_维数_（dimensionality）
> ^sran-1681651216174
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651311690>) [🌐](<http://localhost:7026/reading/44#id=1681651311690>)   
> 与传统机器学习方法相比，深度学习的一个主要优势是可以处理不同长度的数据。
> ^sran-1681651311690
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651323595>) [🌐](<http://localhost:7026/reading/44#id=1681651323595>)   
> 一般来说，拥有越多数据的时候，工作就越容易。  
> 更多的数据可以被用来训练出更强大的模型，从而减少对预先设想假设的依赖。
> ^sran-1681651323595
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651354444>) [🌐](<http://localhost:7026/reading/44#id=1681651354444>)   
> 如果数据中充满了错误，或者如果数据的特征不能预测任务目标，那么模型很可能无效。
> ^sran-1681651354444
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651431396>) [🌐](<http://localhost:7026/reading/44#id=1681651431396>)   
> 如预测性监管、简历筛选和用于贷款的风险模型，我们必须特别警惕垃圾数据带来的后果。  
> 一种常见的问题来自不均衡的数据集，比如在一个有关医疗的训练数据集中，某些人群没有样本表示。
> ^sran-1681651431396
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651469032>) [🌐](<http://localhost:7026/reading/44#id=1681651469032>)   
> 再比如，如果用 “过去的招聘决策数据” 来训练一个筛选简历的模型，那么机器学习模型可能会无意中捕捉到历史残留的不公正，并将其自动化。  
> 然而，这一切都可能在不知情的情况下发生。  
> 因此，当数据不具有充分代表性，甚至包含了一些社会偏见时，模型就很有可能有偏见。
> ^sran-1681651469032
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651522975>) [🌐](<http://localhost:7026/reading/44#id=1681651522975>)   
> 大多数机器学习会涉及到数据的转换。  
> 比如一个 “摄取照片并预测笑脸” 的系统。
> ^sran-1681651522975
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651740248>) [🌐](<http://localhost:7026/reading/44#id=1681651740248>)   
> 在机器学习中，我们需要定义模型的优劣程度的度量，这个度量在大多数情况是 “可优化” 的，这被称之为_目标函数_（objective  
> function）。
> ^sran-1681651740248
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651813144>) [🌐](<http://localhost:7026/reading/44#id=1681651813144>)   
> 试图预测数值时，最常见的损失函数是_平方误差_（squared  
> error），即预测值与实际值之差的平方。  
> 当试图解决分类问题时，最常见的目标函数是最小化错误率，即预测与实际情况不符的样本比例。
> ^sran-1681651813144
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651817222>) [🌐](<http://localhost:7026/reading/44#id=1681651817222>)   
> 有些目标函数（如平方误差）很容易被优化，有些目标（如错误率）由于不可微性或其他复杂性难以直接优化。  
> 在这些情况下，通常会优化_替代目标_。
> ^sran-1681651817222
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681651996982>) [🌐](<http://localhost:7026/reading/44#id=1681651996982>)   
> 损失函数是根据模型参数定义的，并取决于数据集。
> ^sran-1681651996982
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652029902>) [🌐](<http://localhost:7026/reading/44#id=1681652029902>)   
> 在一个数据集上，我们可以通过最小化总损失来学习模型参数的最佳值。  
> 该数据集由一些为训练而收集的样本组成，称为_训练数据集_（training  
> dataset，或称为_训练集_（training set））。  
> 然而，在训练数据上表现良好的模型，并不一定在 “新数据集” 上有同样的性能，这里的 “新数据集” 通常称为_测试数据集_（test  
> dataset，或称为_测试集_（test set））。
> ^sran-1681652029902
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652066587>) [🌐](<http://localhost:7026/reading/44#id=1681652066587>)   
> 训练数据集用于拟合模型参数，测试数据集用于评估拟合的模型
> ^sran-1681652066587
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652077105>) [🌐](<http://localhost:7026/reading/44#id=1681652077105>)   
> 一个模型在训练数据集上的性能” 可以被想象成 “一个学生在模拟考试中的分数”。  
> 这个分数用来为一些真正的期末考试做参考，即使成绩令人鼓舞，也不能保证期末考试成功
> ^sran-1681652077105
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652101844>) [🌐](<http://localhost:7026/reading/44#id=1681652101844>)   
> 测试性能可能会显著偏离训练性能。  
> 当一个模型在训练集上表现良好，但不能推广到测试集时，这个模型被称为_过拟合_（overfitting）的
> ^sran-1681652101844
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652276991>) [🌐](<http://localhost:7026/reading/44#id=1681652276991>)   
> 当我们获得了一些数据源及其表示、一个模型和一个合适的损失函数，接下来就需要一种算法，它能够搜索出最佳参数，以最小化损失函数。
> ^sran-1681652276991
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652299996>) [🌐](<http://localhost:7026/reading/44#id=1681652299996>)   
> 大多流行的优化算法通常基于一种基本方法–_梯度下降_（gradient  
> descent）
> ^sran-1681652299996
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652311018>) [🌐](<http://localhost:7026/reading/44#id=1681652311018>)   
> 在每个步骤中，梯度下降法都会检查每个参数，看看如果仅对该参数进行少量变动，训练集损失会朝哪个方向移动。  
> 然后，它在可以减少损失的方向上优化参数
> ^sran-1681652311018
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652375098>) [🌐](<http://localhost:7026/reading/44#id=1681652375098>)   
> _监督学习_（supervised  
> learning）擅长在 “给定输入特征” 的情况下预测标签
> ^sran-1681652375098
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652387112>) [🌐](<http://localhost:7026/reading/44#id=1681652387112>)   
> 每个 “特征 - 标签” 对都称为一个_样本_（example）
> ^sran-1681652387112
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652580775>) [🌐](<http://localhost:7026/reading/44#id=1681652580775>)   
> 有时，即使标签是未知的，样本也可以指代输入特征
> ^sran-1681652580775
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652597461>) [🌐](<http://localhost:7026/reading/44#id=1681652597461>)   
> 目标是生成一个模型，能够将任何输入特征映射到标签（即预测）
> ^sran-1681652597461
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652637458>) [🌐](<http://localhost:7026/reading/44#id=1681652637458>)   
> 用概率论术语来说，我们希望预测 “估计给定输入特征的标签” 的条件概率。
> ^sran-1681652637458
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652757922>) [🌐](<http://localhost:7026/reading/44#id=1681652757922>)   
> 许多重要的任务可以清晰地描述为，在给定一组特定的可用数据的情况下，估计未知事物的概率。比如：
> 
>   
> 
>   
> -   根据计算机断层扫描（Computed  
>     Tomography，CT）肿瘤图像，预测是否为癌症；
>     
>   
> -   给出一个英语句子，预测正确的法语翻译；
>     
>   
> -   根据本月的财务报告数据，预测下个月股票的价格；
>
> ^sran-1681652757922
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652833076>) [🌐](<http://localhost:7026/reading/44#id=1681652833076>)   
> 1.  从已知大量数据样本中随机选取一个子集，为每个样本获取真实标签。有时，这些样本已有标签（例如，患者是否在下一年内康复？）；有时，这些样本可能需要被人工标记（例如，图像分类）。这些输入和相应的标签一起构成了训练数据集；
>     
>   
> 3.  选择有监督的学习算法，它将训练数据集作为输入，并输出一个 “已完成学习的模型”；
>     
>   
> 5.  将之前没有见过的样本特征放到这个 “已完成学习的模型” 中，使用模型的输出作为相应标签的预测。
>     
>   
> 
>   
> 
> 整个监督学习过程如 [图 1.3.1](#fig-supervised-learning) 所示。
> 
>   
> 
>
> ^sran-1681652833076
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652834852>) [🌐](<http://localhost:7026/reading/44#id=1681652834852>)   
> ![](https://zh-v2.d2l.ai/_images/supervised-learning.svg)
> ^sran-1681652834852
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681652966897>) [🌐](<http://localhost:7026/reading/44#id=1681652966897>)   
> 即使使用简单的描述给定输入特征的预测标签，监督学习也可以采取多种形式的模型，并且需要大量不同的建模决策，这取决于输入和输出的类型、大小和数量。  
> 例如，我们使用不同的模型来处理 “任意长度的序列” 或“固定长度的序列”。
> ^sran-1681652966897
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681653642259>) [🌐](<http://localhost:7026/reading/44#id=1681653642259>)   
> 为什么这个任务可以归类为回归问题呢？本质上是输出决定的。  
> 销售价格（即标签）是一个数值。  
> 当标签取任意数值时，我们称之为_回归_问题，此时的目标是生成一个模型，使它的预测非常接近实际标签值。
> ^sran-1681653642259
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681653781007>) [🌐](<http://localhost:7026/reading/44#id=1681653781007>)   
> 例如，一些差异是由于两个特征之外的几个因素造成的。  
> 在这些情况下，我们将尝试学习最小化 “预测值和实际标签值的差异” 的模型。
> ^sran-1681653781007
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681653834891>) [🌐](<http://localhost:7026/reading/44#id=1681653834891>)   
> 这款应用程序能够自动理解从图像中看到的文本，并将手写字符映射到对应的已知字符之上。  
> 这种 “哪一个” 的问题叫做_分类_（classification）问题。
> ^sran-1681653834891
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681653847745>) [🌐](<http://localhost:7026/reading/44#id=1681653847745>)   
> _分类_问题希望模型能够预测样本属于哪个_类别_（category，正式称为_类_（class））。  
> 例如，手写数字可能有 10 类，标签被设置为数字 0～9。  
> 最简单的分类问题是只有两类，这被称之为_二项分类_（binomial  
> classification）
> ^sran-1681653847745
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681653884631>) [🌐](<http://localhost:7026/reading/44#id=1681653884631>)   
> 我们可以试着用概率语言来理解模型。  
> 给定一个样本特征，模型为每个可能的类分配一个概率。
> ^sran-1681653884631
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681654794299>) [🌐](<http://localhost:7026/reading/44#id=1681654794299>)   
> 与解决回归问题不同，分类问题的常见损失函数被称为_交叉熵_（cross-entropy），本书  
> [3.4 节](https://zh-v2.d2l.ai/chapter_linear-networks/softmax-regression.html#sec-softmax) 将详细阐述
> ^sran-1681654794299
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681654846465>) [🌐](<http://localhost:7026/reading/44#id=1681654846465>)   
> 请注意，最常见的类别不一定是最终用于决策的类别。
> ^sran-1681654846465
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681655132438>) [🌐](<http://localhost:7026/reading/44#id=1681655132438>)   
> 因此，我们需要将 “预期风险” 作为损失函数，即需要将结果的概率乘以与之相关的收益（或伤害）。
> ^sran-1681655132438
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681655153626>) [🌐](<http://localhost:7026/reading/44#id=1681655153626>)   
> 分类可能变得比二项分类、多项分类复杂得多。  
> 例如，有一些分类任务的变体可以用于寻找层次结构，层次结构假定在许多类之间存在某种关系。
> ^sran-1681655153626
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681655173763>) [🌐](<http://localhost:7026/reading/44#id=1681655173763>)   
> 并不是所有的错误都是均等的。  
> 人们宁愿错误地分入一个相关的类别，也不愿错误地分入一个遥远的类别，这通常被称为_层次分类_ (hierarchical  
> classification)。
> ^sran-1681655173763
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681655195369>) [🌐](<http://localhost:7026/reading/44#id=1681655195369>)   
> 在动物分类的应用中，把一只狮子狗误认为雪纳瑞可能不会太糟糕。  
> 但如果模型将狮子狗与恐龙混淆，就滑稽至极了。
> ^sran-1681655195369
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681655226705>) [🌐](<http://localhost:7026/reading/44#id=1681655226705>)   
> 层次结构相关性可能取决于模型的使用者计划如何使用模型。  
> 例如，响尾蛇和乌梢蛇血缘上可能很接近，但如果把响尾蛇误认为是乌梢蛇可能会是致命的。  
> 因为响尾蛇是有毒的，而乌梢蛇是无毒的。
> ^sran-1681655226705
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681655540755>) [🌐](<http://localhost:7026/reading/44#id=1681655540755>)   
> 学习预测不相互排斥的类别的问题称为_多标签分类_（multi-label  
> classification）
> ^sran-1681655540755
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656465103>) [🌐](<http://localhost:7026/reading/44#id=1681656465103>)   
> 我们不仅仅希望输出一个类别或一个实值。  
> 在信息检索领域，我们希望对一组项目进行排序。
> ^sran-1681656465103
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656478527>) [🌐](<http://localhost:7026/reading/44#id=1681656478527>)   
> 以网络搜索为例，目标不是简单的 “查询（query）- 网页（page）” 分类，而是在海量搜索结果中找到用户最需要的那部分
> ^sran-1681656478527
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656493569>) [🌐](<http://localhost:7026/reading/44#id=1681656493569>)   
> 搜索结果的排序也十分重要，学习算法需要输出有序的元素子集
> ^sran-1681656493569
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656522223>) [🌐](<http://localhost:7026/reading/44#id=1681656522223>)   
> 该问题的一种可能的解决方案：首先为集合中的每个元素分配相应的相关性分数，然后检索评级最高的元素。
> ^sran-1681656522223
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656649065>) [🌐](<http://localhost:7026/reading/44#id=1681656649065>)   
> 它的奇特之处在于它不依赖于实际的查询。  
> 在这里，他们依靠一个简单的相关性过滤来识别一组相关条目，然后根据 PageRank 对包含查询条件的结果进行排序
> ^sran-1681656649065
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656682413>) [🌐](<http://localhost:7026/reading/44#id=1681656682413>)   
> 搜索引擎使用机器学习和用户行为模型来获取网页相关性得分，很多学术会议也致力于这一主题。
> ^sran-1681656682413
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656709438>) [🌐](<http://localhost:7026/reading/44#id=1681656709438>)   
> 另一类与搜索和排名相关的问题是_推荐系统_（recommender  
> system），它的目标是向特定用户进行 “个性化” 推荐。
> ^sran-1681656709438
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656762569>) [🌐](<http://localhost:7026/reading/44#id=1681656762569>)   
> 推荐系统会为 “给定用户和物品” 的匹配性打分，这个 “分数” 可能是估计的评级或购买的概率
> ^sran-1681656762569
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656818825>) [🌐](<http://localhost:7026/reading/44#id=1681656818825>)   
> 而工业生产的推荐系统要先进得多，它会将详细的用户活动和项目特征考虑在内
> ^sran-1681656818825
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656874309>) [🌐](<http://localhost:7026/reading/44#id=1681656874309>)   
> 尽管推荐系统具有巨大的应用价值，但单纯用它作为预测模型仍存在一些缺陷。
> ^sran-1681656874309
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656896239>) [🌐](<http://localhost:7026/reading/44#id=1681656896239>)   
> 我们的数据只包含 “审查后的反馈”：用户更倾向于给他们感觉强烈的事物打分。  
> 例如，在五分制电影评分中，会有许多五星级和一星级评分，但三星级却明显很少。
> ^sran-1681656896239
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681656941173>) [🌐](<http://localhost:7026/reading/44#id=1681656941173>)   
> 首先会优先推送一个购买量较大（可能被认为更好）的商品，然而目前用户的购买习惯往往是遵循推荐算法，但学习算法并不总是考虑到这一细节，进而更频繁地被推荐
> ^sran-1681656941173
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657074068>) [🌐](<http://localhost:7026/reading/44#id=1681657074068>)   
> 以上大多数问题都具有固定大小的输入和产生固定大小的输出。
> ^sran-1681657074068
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657103041>) [🌐](<http://localhost:7026/reading/44#id=1681657103041>)   
> 在这些情况下，模型只会将输入作为生成输出的 “原料”，而不会“记住” 输入的具体内容。
> ^sran-1681657103041
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657146367>) [🌐](<http://localhost:7026/reading/44#id=1681657146367>)   
> 在医学上序列输入和输出就更为重要。  
> 设想一下，假设一个模型被用来监控重症监护病人，如果他们在未来 24 小时内死亡的风险超过某个阈值，这个模型就会发出警报。  
> 我们绝不希望抛弃过去每小时有关病人病史的所有信息，而仅根据最近的测量结果做出预测。
> ^sran-1681657146367
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657162438>) [🌐](<http://localhost:7026/reading/44#id=1681657162438>)   
> 序列学习需要摄取输入序列或预测输出序列，或两者兼而有之。
> ^sran-1681657162438
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657242634>) [🌐](<http://localhost:7026/reading/44#id=1681657242634>)   
> 具体来说，输入和输出都是可变长度的序列，例如机器翻译和从语音中转录文本。
> ^sran-1681657242634
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657432425>) [🌐](<http://localhost:7026/reading/44#id=1681657432425>)   
> **标记和解析**。这涉及到用属性注释文本序列。  
> 换句话说，输入和输出的数量基本上是相同的。
> ^sran-1681657432425
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657515410>) [🌐](<http://localhost:7026/reading/44#id=1681657515410>)   
> 我们可能想知道动词和主语在哪里，或者可能想知道哪些单词是命名实体。  
> 通常，目标是基于结构和语法假设对文本进行分解和注释，以获得一些注释
> ^sran-1681657515410
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657523928>) [🌐](<http://localhost:7026/reading/44#id=1681657523928>)   
> 下面是一个非常简单的示例，它使用 “标记” 来注释一个句子，该标记指示哪些单词引用命名实体。  
> 标记为“Ent”，是_实体_（entity）的简写。
> 
>   
> 
> ```
> Tom has dinner in Washington with Sally  
> Ent  -    -    -     Ent      -    Ent  
> 
> ```
> ^sran-1681657523928
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657557482>) [🌐](<http://localhost:7026/reading/44#id=1681657557482>)   
> 与文本相比，音频帧多得多
> ^sran-1681657557482
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657604761>) [🌐](<http://localhost:7026/reading/44#id=1681657604761>)   
> 音频和文本之间没有 1:1 的对应关系，因为数千个样本可能对应于一个单独的单词。  
> 这也是 “序列到序列” 的学习问题，其中输出比输入短得多。
> 
>   
> 
>   
> 
> [](https://zh-v2.d2l.ai/_images/speech.png)
> ^sran-1681657604761
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657648377>) [🌐](<http://localhost:7026/reading/44#id=1681657648377>)   
> **文本到语音**。这与自动语音识别相反。  
> 换句话说，输入是文本，输出是音频文件。
> ^sran-1681657648377
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657743983>) [🌐](<http://localhost:7026/reading/44#id=1681657743983>)   
> 其他学习任务也有序列学习的应用。  
> 例如，确定 “用户阅读网页的顺序” 是二维布局分析问题。
> ^sran-1681657743983
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681657756938>) [🌐](<http://localhost:7026/reading/44#id=1681657756938>)   
> 对话问题对序列的学习更为复杂：确定下一轮对话，需要考虑对话历史状态以及现实世界的知识……  
> 如上这些都是热门的序列学习研究领域。
> ^sran-1681657756938
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681695755589>) [🌐](<http://localhost:7026/reading/44#id=1681695755589>)   
> 相反，如果工作没有十分具体的目标，就需要 “自发” 地去学习了。  
> 比如，老板可能会给我们一大堆数据，然后要求用它做一些数据科学研究，却没有对结果有要求。
> ^sran-1681695755589
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681695771772>) [🌐](<http://localhost:7026/reading/44#id=1681695771772>)   
> 这类数据中不含有 “目标” 的机器学习问题通常被为_无监督学习_（unsupervised  
> learning）
> ^sran-1681695771772
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681695801903>) [🌐](<http://localhost:7026/reading/44#id=1681695801903>)   
> _聚类_（clustering）问题：没有标签的情况下，我们是否能给数据分类呢？比如，给定一组照片，我们能把它们分成风景照片、狗、婴儿、猫和山峰的照片吗？同样，给定一组用户的网页浏览记录，我们能否将具有相似行为的用户聚类呢？
> ^sran-1681695801903
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681695815865>) [🌐](<http://localhost:7026/reading/44#id=1681695815865>)   
> _主成分分析_（principal component  
> analysis）问题：我们能否找到少量的参数来准确地捕捉数据的线性相关属性？
> ^sran-1681695815865
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681695937381>) [🌐](<http://localhost:7026/reading/44#id=1681695937381>)   
> 比如，一个球的运动轨迹可以用球的速度、直径和质量来描述。
> ^sran-1681695937381
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681695977367>) [🌐](<http://localhost:7026/reading/44#id=1681695977367>)   
> _因果关系_（causality）和_概率图模型_（probabilistic graphical  
> models）问题：我们能否描述观察到的许多数据的根本原因？例如，如果我们有关于房价、污染、犯罪、地理位置、教育和工资的人口统计数据，我们能否简单地根据经验数据发现它们之间的关系？
> ^sran-1681695977367
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681696045654>) [🌐](<http://localhost:7026/reading/44#id=1681696045654>)   
> _生成对抗性网络_（generative adversarial  
> networks）：为我们提供一种合成数据的方法，甚至像图像和音频这样复杂的非结构化数据。潜在的统计机制是检查真实和虚假数据是否相同的测试，它是无监督学习的另一个重要而令人兴奋的领域。
> ^sran-1681696045654
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681696077284>) [🌐](<http://localhost:7026/reading/44#id=1681696077284>)   
> 这里所有学习都是在算法与环境断开后进行的，被称为_离线学习_（offline  
> learning）。 对于监督学习，从环境中收集数据的过程类似于  
> [图 1.3.6](#fig-data-collection)。
> 
>   
> 
>
> ^sran-1681696077284
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681696081386>) [🌐](<http://localhost:7026/reading/44#id=1681696081386>)   
> ![](https://zh-v2.d2l.ai/_images/data-collection.svg)
> ^sran-1681696081386
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681696130516>) [🌐](<http://localhost:7026/reading/44#id=1681696130516>)   
> 好的一面是，我们可以孤立地进行模式识别，而不必分心于其他问题。  
> 但缺点是，解决的问题相当有限。  
> 这时我们可能会期望人工智能不仅能够做出预测，而且能够与真实环境互动。
> ^sran-1681696130516
 
> [!srhl4] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681696163477>) [🌐](<http://localhost:7026/reading/44#id=1681696163477>)   
> 与预测不同，“与真实环境互动” 实际上会影响环境。  
> 这里的人工智能是 “智能代理”，而不仅是 “预测模型”。  
> 因此，我们必须考虑到它的行为可能会影响未来的观察结果。
> ^sran-1681696163477
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681696318614>) [🌐](<http://localhost:7026/reading/44#id=1681696318614>)   
> 考虑 “与真实环境互动” 将打开一整套新的建模问题。以下只是几个例子。
> 
>   
> 
>   
> -   环境还记得我们以前做过什么吗？
>     
>   
> -   环境是否有助于我们建模？例如，用户将文本读入语音识别器。
>     
>   
> -   环境是否想要打败模型？例如，一个对抗性的设置，如垃圾邮件过滤或玩游戏？
>     
>   
> -   环境是否重要？
>     
>   
> -   环境是否变化？例如，未来的数据是否总是与过去相似，还是随着时间的推移会发生变化？是自然变化还是响应我们的自动化工具而发生变化？
>
> ^sran-1681696318614
 
> [!srhl4] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681696311801>) [🌐](<http://localhost:7026/reading/44#id=1681696311801>)   
> 当训练和测试数据不同时，最后一个问题提出了_分布偏移_（distribution  
> shift）的问题。
> ^sran-1681696311801
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681698954394>) [🌐](<http://localhost:7026/reading/44#id=1681698954394>)   
> _强化学习_（reinforcement  
> learning）。  
> 这可能包括应用到机器人、对话系统，甚至开发视频游戏的人工智能（AI）
> ^sran-1681698954394
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681698978747>) [🌐](<http://localhost:7026/reading/44#id=1681698978747>)   
> _深度强化学习_（deep reinforcement  
> learning）将深度学习应用于强化学习的问题，是非常热门的研究领域
> ^sran-1681698978747
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681698992608>) [🌐](<http://localhost:7026/reading/44#id=1681698992608>)   
> 突破性的深度 _Q 网络_（Q-network）在雅达利游戏中仅使用视觉输入就击败了人类，  
> 以及 AlphaGo  
> 程序在棋盘游戏围棋中击败了世界冠军，是两个突出强化学习的例子
> ^sran-1681698992608
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699006999>) [🌐](<http://localhost:7026/reading/44#id=1681699006999>)   
> 智能体（agent）在一系列的时间步骤上与环境交互
> ^sran-1681699006999
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699055451>) [🌐](<http://localhost:7026/reading/44#id=1681699055451>)   
> 在每个特定时间点，智能体从环境接收一些_观察_（observation），并且必须选择一个_动作_（action），然后通过某种机制（有时称为执行器）将其传输回环境，最后智能体从环境中获得_奖励_（reward）
> ^sran-1681699055451
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699077275>) [🌐](<http://localhost:7026/reading/44#id=1681699077275>)   
> 请注意，强化学习的目标是产生一个好的_策略_（policy）。  
> 强化学习智能体选择的 “动作” 受策略控制，即一个从环境观察映射到行动的功能。
> ^sran-1681699077275
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699163651>) [🌐](<http://localhost:7026/reading/44#id=1681699163651>)   
> 强化学习框架的通用性十分强大。  
> 例如，我们可以将任何监督学习问题转化为强化学习问题。
> ^sran-1681699163651
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699249673>) [🌐](<http://localhost:7026/reading/44#id=1681699249673>)   
> 假设我们有一个分类问题，可以创建一个强化学习智能体，每个分类对应一个 “动作”。  
> 然后，我们可以创建一个环境，该环境给予智能体的奖励。  
> 这个奖励与原始监督学习问题的损失函数是一致的。
> ^sran-1681699249673
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699276757>) [🌐](<http://localhost:7026/reading/44#id=1681699276757>)   
> 但在强化学习中，我们并不假设环境告诉智能体每个观测的最优动作。  
> 一般来说，智能体只是得到一些奖励。  
> 此外，环境甚至可能不会告诉是哪些行为导致了奖励。
> ^sran-1681699276757
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699295001>) [🌐](<http://localhost:7026/reading/44#id=1681699295001>)   
> 以强化学习在国际象棋的应用为例。  
> 唯一真正的奖励信号出现在游戏结束时：当智能体获胜时，智能体可以得到奖励 1；当智能体失败时，智能体将得到奖励 - 1。
> ^sran-1681699295001
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699317627>) [🌐](<http://localhost:7026/reading/44#id=1681699317627>)   
> 因此，强化学习者必须处理_学分分配_（credit  
> assignment）问题：决定哪些行为是值得奖励的，哪些行为是需要惩罚的。
> ^sran-1681699317627
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699395775>) [🌐](<http://localhost:7026/reading/44#id=1681699395775>)   
> 就像一个员工升职一样，这次升职很可能反映了前一年的大量的行动。  
> 要想在未来获得更多的晋升，就需要弄清楚这一过程中哪些行为导致了晋升。
> ^sran-1681699395775
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699422883>) [🌐](<http://localhost:7026/reading/44#id=1681699422883>)   
> 强化学习可能还必须处理部分可观测性问题。  
> 也就是说，当前的观察结果可能无法阐述有关当前状态的所有信息。
> ^sran-1681699422883
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699497861>) [🌐](<http://localhost:7026/reading/44#id=1681699497861>)   
> 最后，在任何时间点上，强化学习智能体可能知道一个好的策略，但可能有许多更好的策略从未尝试过的。  
> 强化学习智能体必须不断地做出选择：是应该利用当前最好的策略，还是探索新的策略空间（放弃一些短期回报来换取知识）。
> ^sran-1681699497861
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699540255>) [🌐](<http://localhost:7026/reading/44#id=1681699540255>)   
> 一般的强化学习问题是一个非常普遍的问题。  
> 智能体的动作会影响后续的观察，而奖励只与所选的动作相对应。  
> 环境可以是完整观察到的，也可以是部分观察到的
> ^sran-1681699540255
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699550550>) [🌐](<http://localhost:7026/reading/44#id=1681699550550>)   
> 此外，并不是每个实际问题都表现出所有这些复杂性。
> ^sran-1681699550550
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699570442>) [🌐](<http://localhost:7026/reading/44#id=1681699570442>)   
> 当环境可被完全观察到时，强化学习问题被称为_马尔可夫决策过程_（markov  
> decision process）。  
> 当状态不依赖于之前的操作时，我们称该问题为_上下文赌博机_（contextual  
> bandit problem）
> ^sran-1681699570442
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681699587651>) [🌐](<http://localhost:7026/reading/44#id=1681699587651>)   
> 当没有状态，只有一组最初未知回报的可用动作时，这个问题就是经典的_多臂赌博机_
> ^sran-1681699587651
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681700064043>) [🌐](<http://localhost:7026/reading/44#id=1681700064043>)   
> 考虑到数据和计算的稀缺性，_核方法_（kernel  
> method）、_决策树_（decision tree）和_图模型_（graph  
> models）等强大的统计工具（在经验上）证明是更为优越的。  
> 与神经网络不同的是，这些算法不需要数周的训练，而且有很强的理论依据，可以提供可预测的结果。
> ^sran-1681700064043
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681700220408>) [🌐](<http://localhost:7026/reading/44#id=1681700220408>)   
> 这也造就了许多深度学习的中流砥柱，如多层感知机  
> ([McCulloch and Pitts, 1943](https://zh-v2.d2l.ai/chapter_references/zreferences.html#id106 "McCulloch, W. S., & Pitts, W. (1943). A logical calculus of the ideas immanent in nervous activity. The bulletin of mathematical biophysics, 5(4), 115–133.")) 、卷积神经网络  
> ([LeCun _et al._, 1998](https://zh-v2.d2l.ai/chapter_references/zreferences.html#id90 "LeCun, Y., Bottou, L., Bengio, Y., Haffner, P., & others. (1998). Gradient-based learning applied to document recognition. Proceedings of the IEEE, 86(11), 2278–2324.")) 、长短期记忆网络  
> ([Graves and Schmidhuber, 2005](https://zh-v2.d2l.ai/chapter_references/zreferences.html#id51 "Graves, A., & Schmidhuber, J. (2005). Framewise phoneme classification with bidirectional lstm and other neural network architectures. Neural networks, 18(5-6), 602–610.")) 和 Q 学习 ([Watkins and Dayan, 1992](https://zh-v2.d2l.ai/chapter_references/zreferences.html#id179 "Watkins, C. J., & Dayan, P. (1992). Q-learning. Machine learning, 8(3-4), 279–292."))  
> ，在相对休眠了相当长一段时间之后，在过去十年中被 “重新发现”。
> ^sran-1681700220408
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681700265067>) [🌐](<http://localhost:7026/reading/44#id=1681700265067>)   
> 新的容量控制方法，如 _dropout_  
> ([Srivastava _et al._, 2014](https://zh-v2.d2l.ai/chapter_references/zreferences.html#id155 "Srivastava, N., Hinton, G., Krizhevsky, A., Sutskever, I., & Salakhutdinov, R. (2014). Dropout: a simple way to prevent neural networks from overfitting. The Journal of Machine Learning Research, 15(1), 1929–1958."))，有助于减轻过拟合的危险。这是通过在整个神经网络中应用噪声注入  
> ([Bishop, 1995](https://zh-v2.d2l.ai/chapter_references/zreferences.html#id9 "Bishop, C. M. (1995). Training with noise is equivalent to tikhonov regularization. Neural computation, 7(1), 108–116.")) 来实现的，出于训练目的，用随机变量来代替权重。
> ^sran-1681700265067
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681700352886>) [🌐](<http://localhost:7026/reading/44#id=1681700352886>)   
> 注意力机制解决了困扰统计学一个多世纪的问题：如何在不增加可学习参数的情况下增加系统的记忆和复杂性。
> ^sran-1681700352886
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681700451741>) [🌐](<http://localhost:7026/reading/44#id=1681700451741>)   
> 研究人员通过使用只能被视为可学习的指针结构  
> ([Bahdanau _et al._, 2014](https://zh-v2.d2l.ai/chapter_references/zreferences.html#id6 "Bahdanau, D., Cho, K., & Bengio, Y. (2014). Neural machine translation by jointly learning to align and translate. arXiv preprint arXiv:1409.0473."))  
> 找到了一个优雅的解决方案。
> ^sran-1681700451741
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681700464586>) [🌐](<http://localhost:7026/reading/44#id=1681700464586>)   
> 不需要记住整个文本序列（例如用于固定维度表示中的机器翻译），所有需要存储的都是指向翻译过程的中间状态的指针。
> ^sran-1681700464586
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701149286>) [🌐](<http://localhost:7026/reading/44#id=1681701149286>)   
> 如前所述，机器学习可以使用数据来学习输入和输出之间的转换，例如在语音识别中将音频转换为文本。  
> 在这样做时，通常需要以适合算法的方式表示数据，以便将这种表示转换为输出。  
> 深度学习是 “深度” 的，模型学习了许多 “层” 的转换，每一层提供一个层次的表示。
> ^sran-1681701149286
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701161026>) [🌐](<http://localhost:7026/reading/44#id=1681701161026>)   
> 例如，靠近输入的层可以表示数据的低级细节，而接近分类输出的层可以表示用于区分的更抽象的概念。  
> 由于_表示学习_（representation  
> learning）目的是寻找表示本身，因此深度学习可以称为 “多级表示学习”。
> ^sran-1681701161026
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701198646>) [🌐](<http://localhost:7026/reading/44#id=1681701198646>)   
> 毋庸置疑，深度学习方法中最显著的共同点是使用端到端训练。  
> 也就是说，与其基于单独调整的组件组装系统，不如构建系统，然后联合调整它们的性能。
> ^sran-1681701198646
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701241301>) [🌐](<http://localhost:7026/reading/44#id=1681701241301>)   
> 然而，与一个算法自动执行的数百万个选择相比，人类通过特征工程所能完成的事情很少。  
> 当深度学习开始时，这些特征抽取器被自动调整的滤波器所取代，产生了更高的精确度。
> ^sran-1681701241301
 
> [!srhl4] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701252947>) [🌐](<http://localhost:7026/reading/44#id=1681701252947>)   
> 深度学习的一个关键优势是它不仅取代了传统学习管道末端的浅层模型，而且还取代了劳动密集型的特征工程过程
> ^sran-1681701252947
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701269592>) [🌐](<http://localhost:7026/reading/44#id=1681701269592>)   
> 通过取代大部分特定领域的预处理，深度学习消除了以前分隔计算机视觉、语音识别、自然语言处理、医学信息学和其他应用领域的许多界限，为解决各种问题提供了一套统一的工具
> ^sran-1681701269592
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701276597>) [🌐](<http://localhost:7026/reading/44#id=1681701276597>)   
> 除了端到端的训练，人们正在经历从参数统计描述到完全非参数模型的转变
> ^sran-1681701276597
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701290389>) [🌐](<http://localhost:7026/reading/44#id=1681701290389>)   
> 当数据稀缺时，人们需要依靠简化对现实的假设来获得有用的模型。  
> 当数据丰富时，可以用更准确地拟合实际情况的非参数模型来代替。
> ^sran-1681701290389
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701312653>) [🌐](<http://localhost:7026/reading/44#id=1681701312653>)   
> 现在人们可以借助于相关偏微分方程的数值模拟，而不是用手来求解电子行为的参数近似。这导致了更精确的模型，尽管常常以牺牲可解释性为代价。
> ^sran-1681701312653
 
> [!srhl4] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701345738>) [🌐](<http://localhost:7026/reading/44#id=1681701345738>)   
> 与以前工作的另一个不同之处是接受次优解，处理非凸非线性优化问题，并且愿意在证明之前尝试
> ^sran-1681701345738
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701368802>) [🌐](<http://localhost:7026/reading/44#id=1681701368802>)   
> 最后，深度学习社区引以为豪的是，他们跨越学术界和企业界共享工具，发布了许多优秀的算法库、统计模型和经过训练的开源神经网络。
> ^sran-1681701368802
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701449212>) [🌐](<http://localhost:7026/reading/44#id=1681701449212>)   
> 机器学习研究计算机系统如何利用经验（通常是数据）来提高特定任务的性能
> ^sran-1681701449212
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701476754>) [🌐](<http://localhost:7026/reading/44#id=1681701476754>)   
> 表示学习作为机器学习的一类，其研究的重点是如何自动找到合适的数据表示方式
> ^sran-1681701476754
 
> [!srhl3] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701489781>) [🌐](<http://localhost:7026/reading/44#id=1681701489781>)   
> 深度学习是通过学习多层次的转换来进行的多层次的表示学习
> ^sran-1681701489781
 
> [!srhl5] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701506835>) [🌐](<http://localhost:7026/reading/44#id=1681701506835>)   
> 深度学习不仅取代了传统机器学习的浅层模型，而且取代了劳动密集型的特征工程。
> ^sran-1681701506835
 
> [!srhl2] [[SR44@1_ 引言 — 动手学深度学习 2_0_0 documentation|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/44#id=1681701518349>) [🌐](<http://localhost:7026/reading/44#id=1681701518349>)   
> 整个系统优化是获得高性能的关键环节。有效的深度学习框架的开源使得这一点的设计和实现变得非常容易。
> ^sran-1681701518349
 
 