---
title: "Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com"
alias: 
  - "Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com"
created-date: 2023-04-04T18:46:44+0800
type: Simpread
banner: "https://machinelearningmastery.com/wp-content/uploads/2018/07/What-is-the-Difference-Between-a-Batch-and-an-Epoch-in-a-Neural-Network.jpg "
banner_icon: 🔖
tag: 
idx: 7
---

# Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com

> [!example]- [🧷内部链接](<http://localhost:7026/unread/7>) [🌐外部链接](<https://machinelearningmastery.com/difference-between-a-batch-and-an-epoch/>)    
> URI:: [🧷](<http://localhost:7026/unread/7>) [🌐](<https://machinelearningmastery.com/difference-between-a-batch-and-an-epoch/>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/7>)

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
>  **Description**:: Stochastic gradient descent is a learning algorithm that has a number of hyperparameters.

Two hyperp......
%%

> [!md] Metadata  
> **标题**:: [Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com](https://machinelearningmastery.com/difference-between-a-batch-and-an-epoch/)  
> **日期**:: [[2023-04-04]]  

## Annotations


> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605270786>) [🌐](<http://localhost:7026/reading/7#id=1680605270786>) #batch #epoch #还行   
> Two hyperparameters that often confuse beginners are the batch size and number of epochs. They are both integer values and seem to do the same thing.
> ^sran-1680605270786
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605203869>) [🌐](<http://localhost:7026/reading/7#id=1680605203869>)   
> Stochastic gradient descent is an iterative learning algorithm that uses a training dataset to update a model.
> ^sran-1680605203869
 
> [!srhl4] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605244770>) [🌐](<http://localhost:7026/reading/7#id=1680605244770>)   
> The batch size is a hyperparameter of gradient descent that controls the number of training samples to work through before the model’s internal parameters are updated.
> ^sran-1680605244770
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605281591>) [🌐](<http://localhost:7026/reading/7#id=1680605281591>)   
> The number of epochs is a hyperparameter of gradient descent that controls the number of complete passes through the training dataset.
> ^sran-1680605281591
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605428007>) [🌐](<http://localhost:7026/reading/7#id=1680605428007>)   
> The algorithm is iterative. This means that the search process occurs over multiple discrete steps, each step hopefully slightly improving the model parameters.
> ^sran-1680605428007
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605517524>) [🌐](<http://localhost:7026/reading/7#id=1680605517524>)   
> Each step involves using the model with the current set of internal parameters to make predictions on some samples, comparing the predictions to the real expected outcomes, calculating the error, and using the error to update the internal model parameters.
> ^sran-1680605517524
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605548545>) [🌐](<http://localhost:7026/reading/7#id=1680605548545>)   
> A sample is a single row of data.
> ^sran-1680605548545
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605651889>) [🌐](<http://localhost:7026/reading/7#id=1680605651889>)   
> It contains inputs that are fed into the algorithm and an output that is used to compare to the prediction and calculate an error.
> ^sran-1680605651889
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605659482>) [🌐](<http://localhost:7026/reading/7#id=1680605659482>)   
> A training dataset is comprised of many rows of data, e.g. many samples. A sample may also be called an instance, an observation, an input vector, or a feature vector.
> ^sran-1680605659482
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605698372>) [🌐](<http://localhost:7026/reading/7#id=1680605698372>)   
> The batch size is a hyperparameter that defines the number of samples to work through before updating the internal model parameters.
> ^sran-1680605698372
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605751913>) [🌐](<http://localhost:7026/reading/7#id=1680605751913>)   
> Think of a batch as a for-loop iterating over one or more samples and making predictions. At the end of the batch, the predictions are compared to the expected output variables and an error is calculated. From this error, the update algorithm is used to improve the model, e.g. move down along the error gradient.
> ^sran-1680605751913
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605805285>) [🌐](<http://localhost:7026/reading/7#id=1680605805285>)   
> When all training samples are used to create one batch, the learning algorithm is called batch gradient descent.
> ^sran-1680605805285
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605937318>) [🌐](<http://localhost:7026/reading/7#id=1680605937318>)   
> When the batch is the size of one sample, the learning algorithm is called stochastic gradient descent.
> ^sran-1680605937318
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680605974995>) [🌐](<http://localhost:7026/reading/7#id=1680605974995>)   
> When the batch size is more than one sample and less than the size of the training dataset, the learning algorithm is called mini-batch gradient descent.
> ^sran-1680605974995
 
> [!srhl5] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606012849>) [🌐](<http://localhost:7026/reading/7#id=1680606012849>)   
> In the case of mini-batch gradient descent, popular batch sizes include 32, 64, and 128 samples. You may see these values used in models in the literature and in tutorials.
> ^sran-1680606012849
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606024257>) [🌐](<http://localhost:7026/reading/7#id=1680606024257>)   
> What if the dataset does not divide evenly by the batch size?
> ^sran-1680606024257
 
> [!srhl5] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606036144>) [🌐](<http://localhost:7026/reading/7#id=1680606036144>)   
> It simply means that the final batch has fewer samples than the other batches.
> ^sran-1680606036144
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606053291>) [🌐](<http://localhost:7026/reading/7#id=1680606053291>)   
> remove some samples from the dataset or change the batch size such that the number of samples in the dataset does divide evenly by the batch size
> ^sran-1680606053291
 
> [!srhl5] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606083159>) [🌐](<http://localhost:7026/reading/7#id=1680606083159>)   
> The number of epochs is a hyperparameter that defines the number times that the learning algorithm will work through the entire training dataset.
> ^sran-1680606083159
 
> [!srhl6] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606151774>) [🌐](<http://localhost:7026/reading/7#id=1680606151774>)   
> One epoch means that each sample in the training dataset has had an opportunity to update the internal model parameters.
> ^sran-1680606151774
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606171782>) [🌐](<http://localhost:7026/reading/7#id=1680606171782>)   
> as above, an epoch that has one batch is called the batch gradient descent learning algorithm.
> ^sran-1680606171782
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606197031>) [🌐](<http://localhost:7026/reading/7#id=1680606197031>)   
> a for-loop over the number of epochs where each loop proceeds over the training dataset
> ^sran-1680606197031
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606305096>) [🌐](<http://localhost:7026/reading/7#id=1680606305096>)   
> The number of epochs is traditionally large, often hundreds or thousands, allowing the learning algorithm to run until the error from the model has been sufficiently minimized. You may see examples of the number of epochs in the literature and in tutorials set to 10, 100, 500, 1000, and larger.
> ^sran-1680606305096
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606325946>) [🌐](<http://localhost:7026/reading/7#id=1680606325946>)   
> It is common to create line plots that show epochs along the x-axis as time and the error or skill of the model on the y-axis.
> ^sran-1680606325946
 
> [!srhl6] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606344221>) [🌐](<http://localhost:7026/reading/7#id=1680606344221>)   
> These plots are sometimes called learning curves. These plots can help to diagnose whether the model has over learned, under learned, or is suitably fit to the training dataset.
> ^sran-1680606344221
 
> [!srhl2] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606481989>) [🌐](<http://localhost:7026/reading/7#id=1680606481989>)   
> The batch size is a number of samples processed before the model is updated.
> ^sran-1680606481989
 
> [!srhl3] [[SR7@Difference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_comDifference Between a Batch and an Epoch in a Neural Network - MachineLearningMastery_com|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/7#id=1680606496966>) [🌐](<http://localhost:7026/reading/7#id=1680606496966>)   
> The number of epochs is the number of complete passes through the training dataset.
> ^sran-1680606496966
 
 