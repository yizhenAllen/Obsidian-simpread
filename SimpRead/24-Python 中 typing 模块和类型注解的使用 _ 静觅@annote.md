---
title: "Python 中 typing 模块和类型注解的使用 _ 静觅"
alias: 
  - "Python 中 typing 模块和类型注解的使用 _ 静觅"
created-date: 2023-04-09T17:58:15+0800
type: Simpread
tag: 
idx: 24
---

# Python 中 typing 模块和类型注解的使用 _ 静觅

> [!example]- [🧷内部链接](<http://localhost:7026/unread/24>) [🌐外部链接](<https://cuiqingcai.com/7071.html>)    
> URI:: [🧷](<http://localhost:7026/unread/24>) [🌐](<https://cuiqingcai.com/7071.html>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/24>)

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
>  **Description**:: 实例引入 我们知道 Python 是一种动态语言，在声明一个变量时我们不需要显式地声明它的类型，例如下面的例子：                         12                  ......
%%

> [!md] Metadata  
> **标题**:: [Python 中 typing 模块和类型注解的使用 _ 静觅](https://cuiqingcai.com/7071.html)  
> **日期**:: [[2023-04-09]]  

## Annotations


> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034294784>) [🌐](<http://localhost:7026/reading/24#id=1681034294784>)   
> 在声明变量时，变量的后面可以加一个冒号，后面再写上变量的类型，如 int、list 等等。
> ^sran-1681034294784
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034305400>) [🌐](<http://localhost:7026/reading/24#id=1681034305400>)   
> 在声明方法返回值的时候，可以在方法的后面加一个箭头，后面加上返回值的类型，如 int、list 等等。
> ^sran-1681034305400
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034317376>) [🌐](<http://localhost:7026/reading/24#id=1681034317376>)   
> 在声明变量类型时，变量后方紧跟一个冒号，冒号后面跟一个空格，再跟上变量的类型。
> ^sran-1681034317376
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034320728>) [🌐](<http://localhost:7026/reading/24#id=1681034320728>)   
> 在声明方法返回值的时候，箭头左边是方法定义，箭头右边是返回值的类型，箭头左右两边都要留有空格。
> ^sran-1681034320728
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034356767>) [🌐](<http://localhost:7026/reading/24#id=1681034356767>)   
> 但值得注意的是，这种类型和变量注解实际上只是一种类型提示，对运行实际上是没有影响的，比如调用 add 方法的时候，我们传入的不是 int 类型，而是一个 float 类型，它也不会报错，也不会对参数进行类型转换
> ^sran-1681034356767
 
> [!srhl4] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034586384>) [🌐](<http://localhost:7026/reading/24#id=1681034586384>)   
> 下面我们再看下一些相对复杂的数据结构，例如列表、元组、字典等类型怎么样来声明。 可想而知了，列表用 list 表示，元组用 tuple 表示，字典用 dict 来表示，那么很自然地，在声明的时候我们就很自然地写成这样了：
> ^sran-1681034586384
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034588712>) [🌐](<http://localhost:7026/reading/24#id=1681034588712>)   
> ```  
> names: list = ['Germey', 'Guido']  
> version: tuple = (3, 7, 4)  
> operations: dict = {'show': False, 'sort': True}  
> ```
> ^sran-1681034588712
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034548623>) [🌐](<http://localhost:7026/reading/24#id=1681034548623>)   
> 确实声明为了对应的类型，但实际上并不能反映整个列表、元组的结构，比如我们只通过类型注解是不知道 names 里面的元素是什么类型的，只知道 names 是一个列表 list 类型，实际上里面都是字符串 str 类型。我们也不知道 version 这个元组的每一个元素是什么类型的，实际上是 int 类型。
> ^sran-1681034548623
 
> [!srhl4] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034568927>) [🌐](<http://localhost:7026/reading/24#id=1681034568927>)   
> 仅仅凭借 list、tuple 这样的声明是非常 “弱” 的，我们需要一种更强的类型声明。 这时候我们就需要借助于 typing 模块了，它提供了非常 “强 “的类型支持，比如 `List[str]`、`Tuple[int, int, int]` 则可以表示由 str 类型的元素组成的列表和由 int 类型的元素组成的长度为 3 的元组。
> ^sran-1681034568927
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034572399>) [🌐](<http://localhost:7026/reading/24#id=1681034572399>)   
> ```  
> from typing import List, Tuple, Dict  
>   
> names: List[str] = ['Germey', 'Guido']  
> version: Tuple[int, int, int] = (3, 7, 4)  
> operations: Dict[str, bool] = {'show': False, 'sort': True}  
> ```
> ^sran-1681034572399
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034677328>) [🌐](<http://localhost:7026/reading/24#id=1681034677328>)   
> 来详细看下 typing 模块的具体用法，这里主要会介绍一些常用的注解类型，如 List、Tuple、Dict、Sequence 等等，了解了每个类型的具体使用方法，我们可以得心应手的对任何变量进行声明了。 在引入的时候就直接通过 typing 模块引入就好了，例如：
> ^sran-1681034677328
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034680233>) [🌐](<http://localhost:7026/reading/24#id=1681034680233>)   
> ```  
> from typing import List, Tuple  
> ```
> ^sran-1681034680233
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034690760>) [🌐](<http://localhost:7026/reading/24#id=1681034690760>)   
> List、列表，是 list 的泛型，基本等同于 list，其后紧跟一个方括号，里面代表了构成这个列表的元素类型，如由数字构成的列表可以声明为：
> ^sran-1681034690760
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034695850>) [🌐](<http://localhost:7026/reading/24#id=1681034695850>)   
> ```  
> var: List[int or float] = [2, 3.5]  
> ```
> ^sran-1681034695850
 
> [!srhl4] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034702672>) [🌐](<http://localhost:7026/reading/24#id=1681034702672>)   
> 嵌套声明都是可以的：
> ^sran-1681034702672
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034699937>) [🌐](<http://localhost:7026/reading/24#id=1681034699937>)   
> ```  
> var: List[List[int]] = [[1, 2], [2, 3]]  
> ```
> ^sran-1681034699937
 
> [!srhl4] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034713576>) [🌐](<http://localhost:7026/reading/24#id=1681034713576>)   
> Tuple、元组，是 tuple 的泛型，其后紧跟一个方括号，方括号中按照顺序声明了构成本元组的元素类型，如 `Tuple[X, Y]` 代表了构成元组的第一个元素是 X 类型，第二个元素是 Y 类型。
> ^sran-1681034713576
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034724544>) [🌐](<http://localhost:7026/reading/24#id=1681034724544>)   
> 如想声明一个元组，分别代表姓名、年龄、身高，三个数据类型分别为 str、int、float，那么可以这么声明：
>  
> - 📝声明和变量名，或者参数等等是连体的，在定义的时候连着写在一起
> ^sran-1681034724544
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034726663>) [🌐](<http://localhost:7026/reading/24#id=1681034726663>)   
> ```  
> person: Tuple[str, int, float] = ('Mike', 22, 1.75)  
> ```
> ^sran-1681034726663
 
> [!srhl4] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034816799>) [🌐](<http://localhost:7026/reading/24#id=1681034816799>)   
> NamedTuple，是 collections.namedtuple 的泛型，实际上就和 namedtuple 用法完全一致，但个人其实并不推荐使用 NamedTuple，推荐使用 attrs 这个库来声明一些具有表征意义的类。
> ^sran-1681034816799
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034849688>) [🌐](<http://localhost:7026/reading/24#id=1681034849688>)   
> Dict、字典，是 dict 的泛型；Mapping，映射，是 collections.abc.Mapping 的泛型。根据官方文档，Dict 推荐用于注解返回类型，Mapping 推荐用于注解参数。
> ^sran-1681034849688
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034855191>) [🌐](<http://localhost:7026/reading/24#id=1681034855191>)   
> 它们的使用方法都是一样的，其后跟一个中括号，中括号内分别声明键名、键值的类型，如：
> ^sran-1681034855191
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681034857815>) [🌐](<http://localhost:7026/reading/24#id=1681034857815>)   
> ```  
> def size(rect: Mapping[str, int]) -> Dict[str, int]:  
> return {'width': rect['width'] + 100, 'height': rect['width'] + 100}  
> ```
>  
> - 📝说明rect参数是一个mapping，从str映射到int；而函数的返回值是一个dict，从keyword的类型是str，对应的值是int类型
> ^sran-1681034857815
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035077863>) [🌐](<http://localhost:7026/reading/24#id=1681035077863>)   
> Set、集合，是 set 的泛型；AbstractSet、是 collections.abc.Set 的泛型。根据官方文档，Set 推荐用于注解返回类型，AbstractSet 用于注解参数。
> ^sran-1681035077863
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035082616>) [🌐](<http://localhost:7026/reading/24#id=1681035082616>)   
> 它们的使用方法都是一样的，其后跟一个中括号，里面声明集合中元素的类型，如：
> ^sran-1681035082616
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035084999>) [🌐](<http://localhost:7026/reading/24#id=1681035084999>)   
> ```  
> def describe(s: AbstractSet[int]) -> Set[int]:  
> return set(s)  
> ```
> ^sran-1681035084999
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035201920>) [🌐](<http://localhost:7026/reading/24#id=1681035201920>)   
> Sequence，是 collections.abc.Sequence 的泛型，在某些情况下，我们可能并不需要严格区分一个变量或参数到底是列表 list 类型还是元组 tuple 类型，我们可以使用一个更为泛化的类型，叫做 Sequence，其用法类似于 List
> ^sran-1681035201920
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035204072>) [🌐](<http://localhost:7026/reading/24#id=1681035204072>)   
> ```  
> def square(elements: Sequence[float]) -> List[float]:  
> return [x ** 2 for x in elements]  
> ```
> ^sran-1681035204072
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035208007>) [🌐](<http://localhost:7026/reading/24#id=1681035208007>)   
> NoReturn，当一个方法没有返回结果时，为了注解它的返回类型，我们可以将其注解为 NoReturn，例如：
> ^sran-1681035208007
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035210431>) [🌐](<http://localhost:7026/reading/24#id=1681035210431>)   
> ```  
> def hello() -> NoReturn:  
> print('hello')  
> ```
> ^sran-1681035210431
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035230735>) [🌐](<http://localhost:7026/reading/24#id=1681035230735>)   
> Any，是一种特殊的类型，它可以代表所有类型，静态类型检查器的所有类型都与 Any 类型兼容，所有的无参数类型注解和返回类型注解的都会默认使用 Any 类型，也就是说，下面两个方法的声明是完全等价的：
> ^sran-1681035230735
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035234255>) [🌐](<http://localhost:7026/reading/24#id=1681035234255>)   
> ```  
> def add(a):  
> return a + 1  
>   
> def add(a: Any) -> Any:  
> return a + 1  
> ```
> ^sran-1681035234255
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035258096>) [🌐](<http://localhost:7026/reading/24#id=1681035258096>)   
> 原理类似于 object，所有的类型都是 object 的子类。但如果我们将参数声明为 object 类型，静态参数类型检查便会抛出错误，而 Any 则不会
> ^sran-1681035258096
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035323655>) [🌐](<http://localhost:7026/reading/24#id=1681035323655>)   
> TypeVar，我们可以借助它来自定义兼容特定类型的变量
> ^sran-1681035323655
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035339872>) [🌐](<http://localhost:7026/reading/24#id=1681035339872>)   
> 有的变量声明为 int、float、None 都是符合要求的，实际就是代表任意的数字或者空内容都可以，其他的类型则不可以，比如列表 list、字典 dict 等等
> ^sran-1681035339872
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035348935>) [🌐](<http://localhost:7026/reading/24#id=1681035348935>)   
> 例如一个人的身高，便可以使用 int 或 float 或 None 来表示，但不能用 dict 来表示，所以可以这么声明：
> ^sran-1681035348935
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035362919>) [🌐](<http://localhost:7026/reading/24#id=1681035362919>)   
> ```  
> height = 1.75  
> Height = TypeVar('Height', int, float, None)  
> def get_height() -> Height:  
> return height  
> ```
> ^sran-1681035362919
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035414336>) [🌐](<http://localhost:7026/reading/24#id=1681035414336>)   
> NewType，我们可以借助于它来声明一些具有特殊含义的类型
> ^sran-1681035414336
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035418392>) [🌐](<http://localhost:7026/reading/24#id=1681035418392>)   
> ```  
> Person = NewType('Person', Tuple[str, int, float])  
> person = Person(('Mike', 22, 1.75))  
> ```
> ^sran-1681035418392
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035423159>) [🌐](<http://localhost:7026/reading/24#id=1681035423159>)   
> 这里实际上 person 就是一个 tuple 类型，我们可以对其像 tuple 一样正常操作。
> ^sran-1681035423159
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035561246>) [🌐](<http://localhost:7026/reading/24#id=1681035561246>)   
> Callable，可调用类型，它通常用来注解一个方法，比如我们刚才声明了一个 add 方法，它就是一个 Callable 类型：
> ^sran-1681035561246
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035574895>) [🌐](<http://localhost:7026/reading/24#id=1681035574895>)   
> Callable 在声明的时候需要使用 `Callable[[Arg1Type, Arg2Type, ...], ReturnType]` 这样的类型注解，将参数类型和返回值类型都要注解出来，例如：
> ^sran-1681035574895
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035577607>) [🌐](<http://localhost:7026/reading/24#id=1681035577607>)   
> ```  
> def date(year: int, month: int, day: int) -> str:  
> return f'{year}-{month}-{day}'  
>   
> def get_date_fn() -> Callable[[int, int, int], str]:  
> return date  
> ```
> ^sran-1681035577607
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035687039>) [🌐](<http://localhost:7026/reading/24#id=1681035687039>)   
> Union，联合类型，`Union[X, Y]` 代表要么是 X 类型，要么是 Y 类型。
> ^sran-1681035687039
 
> [!srhl4] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035691095>) [🌐](<http://localhost:7026/reading/24#id=1681035691095>)   
> ```  
> Union[Union[int, str], float] == Union[int, str, float]  
> ```
> ^sran-1681035691095
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035698095>) [🌐](<http://localhost:7026/reading/24#id=1681035698095>)   
> 仅有一个参数的联合类型会坍缩成参数自身
> ^sran-1681035698095
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035700319>) [🌐](<http://localhost:7026/reading/24#id=1681035700319>)   
> 多余的参数会被跳过
> ^sran-1681035700319
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035702735>) [🌐](<http://localhost:7026/reading/24#id=1681035702735>)   
> 在比较联合类型的时候，参数顺序会被忽略
> ^sran-1681035702735
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035741743>) [🌐](<http://localhost:7026/reading/24#id=1681035741743>)   
> Optional，意思是说这个参数可以为空或已经声明的类型，即 `Optional[X]` 等价于 `Union[X, None]`
> ^sran-1681035741743
 
> [!srhl3] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035760934>) [🌐](<http://localhost:7026/reading/24#id=1681035760934>)   
> 值得注意的是，这个并不等价于可选参数，当它作为参数类型注解的时候，不代表这个参数可以不传递了，而是说这个参数可以传为 None。
> ^sran-1681035760934
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035808007>) [🌐](<http://localhost:7026/reading/24#id=1681035808007>)   
> 如果想代表一个生成器类型，可以使用 Generator，它的声明比较特殊，其后的中括号紧跟着三个参数，分别代表 YieldType、SendType、ReturnType，如：
> ^sran-1681035808007
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035810847>) [🌐](<http://localhost:7026/reading/24#id=1681035810847>)   
> ```  
> def echo_round() -> Generator[int, float, str]:  
> sent = yield 0  
> while sent >= 0:  
> sent = yield round(sent)  
> return 'Done'  
> ```
> ^sran-1681035810847
 
> [!srhl6] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035990983>) [🌐](<http://localhost:7026/reading/24#id=1681035990983>)   
> ```  
> from typing import Set, Union, List, MutableMapping, Optional  
>   
> _Find = Union[List['Element'], 'Element']  
> _XPath = Union[List[str], List['Element'], str, 'Element']  
> _Result = Union[List['Result'], 'Result']  
> _HTML = Union[str, bytes]  
> _BaseHTML = str  
> _UserAgent = str  
> _DefaultEncoding = str  
> _URL = str  
> _RawHTML = bytes  
> _Encoding = str  
> _LXML = HtmlElement  
> _Text = str  
> _Search = Result  
> _Containing = Union[str, List[str]]  
> _Links = Set[str]  
> _Attrs = MutableMapping  
> _Next = Union['HTML', List[str]]  
> _NextSymbol = List[str]  
> ```
> ^sran-1681035990983
 
> [!srhl2] [[SR24@Python 中 typing 模块和类型注解的使用 _ 静觅|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/24#id=1681035998391>) [🌐](<http://localhost:7026/reading/24#id=1681035998391>) #优秀 #函数声明 #typing模块   
> `_Find` 则要么是是 Element 对象的列表，要么是单个 Element 对象，`_Result` 则要么是 Result 对象的列表，要么是单个 Result 对象。
>  
> - 📝显然这里Element代表的是一个类，而声名中用到的List['Element']则代表用Element对象组成的列表
> ^sran-1681035998391
 
 