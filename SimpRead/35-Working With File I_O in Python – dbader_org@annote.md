---
title: "Working With File I/O in Python – dbader.org"
alias: 
  - "Working With File I/O in Python – dbader.org"
created-date: 2023-04-10T17:01:19+0800
type: Simpread
banner: "/static/figures/python-reading-writing-files.jpg "
banner_icon: 🔖
tag: 
idx: 35
---

# Working With File I/O in Python – dbader.org

> [!example]- [🧷内部链接](<http://localhost:7026/unread/35>) [🌐外部链接](<https://dbader.org/blog/python-file-io>)    
> URI:: [🧷](<http://localhost:7026/unread/35>) [🌐](<https://dbader.org/blog/python-file-io>) 
> intURI:: [🧷内部链接](<http://localhost:7026/reading/35>)

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
>  **Description**:: Learn the basics of working with files in Python. How to read from files, how to write data to them, what file seeks are, and why files should be closed.
%%

> [!md] Metadata  
> **标题**:: [Working With File I/O in Python – dbader.org](https://dbader.org/blog/python-file-io)  
> **日期**:: [[2023-04-10]]  

## Annotations


> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681117700842>) [🌐](<http://localhost:7026/reading/35#id=1681117700842>)   
> In this tutorial you’ll learn how to work with files using Python.
> ^sran-1681117700842
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681117940684>) [🌐](<http://localhost:7026/reading/35#id=1681117940684>)   
> Here’s what we’ll cover:
> 
>   
> 
>   
> -   The difference between _binary_ and _text_ files
>   
> -   Where to find Python’s built-in file I/O functions and tools
>   
> -   How to open and close files in Python
>   
> -   The various ways to read data from a file in Python
>   
> -   How to write data to a file object in Python
>   
> -   File seeks in Python and moving the read/write pointer
>   
> -   Editing an existing text file with Python
> ^sran-1681117940684
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118064374>) [🌐](<http://localhost:7026/reading/35#id=1681118064374>)   
> Other examples of binary files include:
> 
>   
> 
>   
> -   Image files including `.jpg`, `.png`, `.bmp`, `.gif`, etc.
>   
> -   Database files including `.mdb`, `.frm`, and `.sqlite`
>   
> -   Documents including `.doc`, `.xls`, `.pdf`, and others.
> ^sran-1681118064374
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118083693>) [🌐](<http://localhost:7026/reading/35#id=1681118083693>)   
> That’s because these files all have requirements for special handling and require a specific type of software to open it.
> ^sran-1681118083693
 
> [!srhl5] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118092219>) [🌐](<http://localhost:7026/reading/35#id=1681118092219>)   
> For example, you need Excel to open an `.xls` file, and a database program to open a `.sqlite` file.
> ^sran-1681118092219
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118105382>) [🌐](<http://localhost:7026/reading/35#id=1681118105382>)   
> A **text file** on the other hand, has no specific encoding and can be opened by a standard text editor without any special handling
> ^sran-1681118105382
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118202544>) [🌐](<http://localhost:7026/reading/35#id=1681118202544>)   
> Text files have to be readable as is.
> ^sran-1681118202544
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118222715>) [🌐](<http://localhost:7026/reading/35#id=1681118222715>)   
> Data in a text file is organized by lines.
> ^sran-1681118222715
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118243969>) [🌐](<http://localhost:7026/reading/35#id=1681118243969>)   
> text files all have an unseen character at the end of each line which lets the text editor know that there should be a new line.
> ^sran-1681118243969
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118406398>) [🌐](<http://localhost:7026/reading/35#id=1681118406398>)   
> **`open()`**. In both Python 2 and Python 3, this command will return a file object as specified in the parameters.
> ^sran-1681118406398
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118410594>) [🌐](<http://localhost:7026/reading/35#id=1681118410594>)   
> ```  
> file_object = open(filename, mode)  
> ```
> ^sran-1681118410594
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118424300>) [🌐](<http://localhost:7026/reading/35#id=1681118424300>)   
> In this instance, `filename` is the name of the file that you want to interact with, with the file extension included.
> ^sran-1681118424300
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118438947>) [🌐](<http://localhost:7026/reading/35#id=1681118438947>)   
> if you have a text file that is `workData.txt`, your filename is not just `"workData"`. It’s `"workData.txt"`
> ^sran-1681118438947
 
> [!srhl5] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118467343>) [🌐](<http://localhost:7026/reading/35#id=1681118467343>)   
> You can also specify the exact path that the file is located at
> ^sran-1681118467343
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118557566>) [🌐](<http://localhost:7026/reading/35#id=1681118557566>)   
> There are multiple modes that you can specify when dealing with text files.
> ^sran-1681118557566
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118586845>) [🌐](<http://localhost:7026/reading/35#id=1681118586845>)   
> **`'w'` – Write Mode**: This mode is used when the file needs to be altered and information changed or added. Keep in mind that this erases the existing file to create a new one. File pointer is placed at the beginning of the file.
> ^sran-1681118586845
 
> [!srhl5] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118607683>) [🌐](<http://localhost:7026/reading/35#id=1681118607683>)   
> **`'r'` – Read Mode**: This mode is used when the information in the file is only meant to be read and not changed inany way. File pointer is placed at the beginning of the file.
> ^sran-1681118607683
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118615591>) [🌐](<http://localhost:7026/reading/35#id=1681118615591>)   
> **`'a'` – Append Mode**: This mode adds information to the end of the file automatically. File pointer is placed at the end of the file.
> ^sran-1681118615591
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118646488>) [🌐](<http://localhost:7026/reading/35#id=1681118646488>)   
> **`'r+'` – Read/Write Mode**: This is used when you will be making changes to the file and reading information from it. The file pointer is placed at the beginning of the file.
> ^sran-1681118646488
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118678854>) [🌐](<http://localhost:7026/reading/35#id=1681118678854>)   
> **`'a+'` – Append and Read Mode**: A file is opened to allow data to be added to the end of the file and lets your program read information as well. File pointer is placed at the end of the file.
> ^sran-1681118678854
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118725717>) [🌐](<http://localhost:7026/reading/35#id=1681118725717>)   
> When you are using binary files, you will use the same mode specifiers. However, you add a b to the end
> ^sran-1681118725717
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118734342>) [🌐](<http://localhost:7026/reading/35#id=1681118734342>)   
> So a write mode specifier for a binary file is **`'wb'`**. The others are **`'rb'`**, **`'ab'`**, **`'r+b'`**, and **`'a+b'`** respectively.
> ^sran-1681118734342
 
> [!srhl5] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118780705>) [🌐](<http://localhost:7026/reading/35#id=1681118780705>)   
> **`'x'` – Exclusive Creation Mode**: This mode is used exclusively to create a file. If a file of the same name already exists, the function call will fail.
> ^sran-1681118780705
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118848958>) [🌐](<http://localhost:7026/reading/35#id=1681118848958>)   
> ```  
> data_file = open("workData.txt", "r+")  
> ```
> ^sran-1681118848958
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118859602>) [🌐](<http://localhost:7026/reading/35#id=1681118859602>)   
> This creates an object called `data_file` that we can then manipulate using Pythons [File Object Methods](https://docs.python.org/3/glossary.html#term-file-object).
> ^sran-1681118859602
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118878604>) [🌐](<http://localhost:7026/reading/35#id=1681118878604>)   
> We used the `'r+'` access mode in this code example which tells Python that we want to open the file for reading and writing. This gives us a lot of flexibility, but often you might want to restrict your program to just reading or just writing to a file and this is where the other modes come in handy.
> ^sran-1681118878604
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118928987>) [🌐](<http://localhost:7026/reading/35#id=1681118928987>)   
> close a file is important when you’re reading and writing.
> 
>   
> 
> It frees up system resources that your program is using for I/O purposes
> ^sran-1681118928987
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681118975316>) [🌐](<http://localhost:7026/reading/35#id=1681118975316>)   
> closing a file ensures that any pending data is written out to the underlying storage system, for example, your local disk drive
> ^sran-1681118975316
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119032556>) [🌐](<http://localhost:7026/reading/35#id=1681119032556>)   
> By explicitly closing the file you ensure that any buffered data held in memory is flushed out and written to the file.
> ^sran-1681119032556
 
> [!srhl5] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119050541>) [🌐](<http://localhost:7026/reading/35#id=1681119050541>)   
> The function to close a file in Python is simply **`fileobject.close()`**
> ^sran-1681119050541
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119063604>) [🌐](<http://localhost:7026/reading/35#id=1681119063604>)   
> After you close a file, you can’t access it any longer until you reopen it at a later date
> ^sran-1681119063604
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119078737>) [🌐](<http://localhost:7026/reading/35#id=1681119078737>)   
> ```  
> >>> f = open("/tmp/myfile.txt", "w")  
> >>> f.close()  
> >>> f.read()  
> Traceback (most recent call last):  
> File "<input>", line 1, in <module>  
> f.read()  
> ValueError: I/O operation on closed file.  
> ```
> ^sran-1681119078737
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119123698>) [🌐](<http://localhost:7026/reading/35#id=1681119123698>)   
> This keyword closes the file automatically after the nested code block completes:
> ^sran-1681119123698
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119130589>) [🌐](<http://localhost:7026/reading/35#id=1681119130589>)   
> ```  
> with open("workData.txt", "r+") as workData:  
> # File object is now open.  
> # Do stuff with the file:  
> workData.read()  
>   
> # File object is now closed.  
> # Do other things...  
> ```
> ^sran-1681119130589
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119368258>) [🌐](<http://localhost:7026/reading/35#id=1681119368258>)   
> If you don’t use the `with` keyword or use the `fileobject.close()` function then Python will automatically close and destroy the file object through the built in garbage collector. However, depending on your code, this garbage collection can happen at any time.
> ^sran-1681119368258
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119721228>) [🌐](<http://localhost:7026/reading/35#id=1681119721228>)   
> Reading a file’s contents uses the **`fileobject.read(size)`** method. By default, this method will read the entire file and print it out to the console as either a string (in text mode) or as byte objects (in binary mode).
>  
> - 📝不会打印出来呀
> ^sran-1681119721228
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119740547>) [🌐](<http://localhost:7026/reading/35#id=1681119740547>)   
> be careful when using the default size, however. If the file you’re reading is larger than your available memory, you won’t be able to access the entire file all at once
> ^sran-1681119740547
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119752893>) [🌐](<http://localhost:7026/reading/35#id=1681119752893>)   
> you need to use the **`size`** parameter to break it up into chunks your memory can handle.
> ^sran-1681119752893
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119783423>) [🌐](<http://localhost:7026/reading/35#id=1681119783423>)   
> The **`size`** parameter tells the read method how many bytes into the file to return to the display
> ^sran-1681119783423
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681119794368>) [🌐](<http://localhost:7026/reading/35#id=1681119794368>)   
> ```  
> with open("workData.txt", "r+") as work_data:  
> print("This is the file name: ", work_data.name)  
> line = work_data.read()  
> print(line)  
> ```
> ^sran-1681119794368
 
> [!srhl5] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681120188829>) [🌐](<http://localhost:7026/reading/35#id=1681120188829>)   
> ```  
> This is the file name: workData.txt  
> This d  
> ```
> ^sran-1681120188829
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681120203676>) [🌐](<http://localhost:7026/reading/35#id=1681120203676>)   
> If you read from the same file object again, it will continue reading data where you left off. That way you can process a large file in several smaller “chunks.”
> ^sran-1681120203676
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681122550803>) [🌐](<http://localhost:7026/reading/35#id=1681122550803>)   
> The **`fileobject.readline(size)`** method defaults to returning the first line of the file. But by changing the integer `size` parameter, you can get any line in your file you need.
>  
> - 📝这里填入size的话，将会限制第一行输出的数据，如果size足够大，则只会输出第一行的数据
> ^sran-1681122550803
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681122592929>) [🌐](<http://localhost:7026/reading/35#id=1681122592929>)   
> ```  
> with open("workData.txt", "r+") as work_data:  
> print("This is the file name: ", work_data.name)  
> line_data = work_data.readline()  
> print(line_data)  
> ```
> ^sran-1681122592929
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681122594531>) [🌐](<http://localhost:7026/reading/35#id=1681122594531>)   
> ```  
> This is the file name: workData.txt  
> This data is on line 1  
> ```
> ^sran-1681122594531
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123499182>) [🌐](<http://localhost:7026/reading/35#id=1681123499182>)   
> You can call `readline()` repeatedly to read additional lines
> ^sran-1681123499182
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123533533>) [🌐](<http://localhost:7026/reading/35#id=1681123533533>)   
> a list of all lines in the file
> ^sran-1681123533533
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123536989>) [🌐](<http://localhost:7026/reading/35#id=1681123536989>)   
> ```  
> print(work_data.readlines())  
> ```
> ^sran-1681123536989
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123538590>) [🌐](<http://localhost:7026/reading/35#id=1681123538590>)   
> ```  
> ['This data is on line 1', 'This data is on line 2', 'This data is on line 3']  
> ```
> ^sran-1681123538590
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123551952>) [🌐](<http://localhost:7026/reading/35#id=1681123551952>)   
> This only works with text files however
> ^sran-1681123551952
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123580715>) [🌐](<http://localhost:7026/reading/35#id=1681123580715>)   
> ```  
> with open("workData.txt", "r+") as work_data:  
> for line in work_data:  
> print(line)  
> ```
> ^sran-1681123580715
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123599768>) [🌐](<http://localhost:7026/reading/35#id=1681123599768>)   
> ```  
> This data is on line 1  
> This data is on line 2  
> This data is on line 3  
> ```
> ^sran-1681123599768
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123614481>) [🌐](<http://localhost:7026/reading/35#id=1681123614481>)   
> This means our program never needs to read the whole file into memory at once. Thus, using `readline()` is a comfortable and efficient way to process a big text file in smaller chunks.
> ^sran-1681123614481
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123644611>) [🌐](<http://localhost:7026/reading/35#id=1681123644611>)   
> when you create a new file object, Python will create the file if one doesn’t already exist.
> ^sran-1681123644611
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123692676>) [🌐](<http://localhost:7026/reading/35#id=1681123692676>)   
> Often it’s preferable to use the **`a+`** mode because the data will default to be added to the end of the file.
> ^sran-1681123692676
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123703771>) [🌐](<http://localhost:7026/reading/35#id=1681123703771>)   
> Using **`w+`** will clear out any existing data in the file and give you a “blank slate” to start from.
> ^sran-1681123703771
 
> [!srhl6] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffb7da">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123718769>) [🌐](<http://localhost:7026/reading/35#id=1681123718769>)   
> ```  
> work_data.write("This data is on line 4\n")  
> ```
> ^sran-1681123718769
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123732515>) [🌐](<http://localhost:7026/reading/35#id=1681123732515>)   
> The `\n` acts as the new line indicator, moving subsequent writes to the next line.
> ^sran-1681123732515
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123809476>) [🌐](<http://localhost:7026/reading/35#id=1681123809476>)   
> oing to be at the end of the file.
> ^sran-1681123809476
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123866248>) [🌐](<http://localhost:7026/reading/35#id=1681123866248>)   
> The offset is the number of characters from the `from_what` parameter. The `from_what` parameter has three possible values:
> ^sran-1681123866248
 
> [!srhl4] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a1e0ff">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123869836>) [🌐](<http://localhost:7026/reading/35#id=1681123869836>)   
> -   `0` – indicates the beginning of the file
>   
> -   `1` – indicates the current pointer position
>   
> -   `2` – indicates the end of the file
> ^sran-1681123869836
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123930264>) [🌐](<http://localhost:7026/reading/35#id=1681123930264>)   
> you’re working with text files (those that have been opened without a b in the mode), you can only use the default `0`, or a `seek(0, 2)`, which will take you to the end of the file.
> ^sran-1681123930264
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123952636>) [🌐](<http://localhost:7026/reading/35#id=1681123952636>)   
> at the 4th character
> ^sran-1681123952636
 
> [!srhl3] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a2e9f2">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681123961979>) [🌐](<http://localhost:7026/reading/35#id=1681123961979>)   
> Python starts counts at 0
> ^sran-1681123961979
 
> [!srhl5] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #a8ea68">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681124028529>) [🌐](<http://localhost:7026/reading/35#id=1681124028529>)   
> ```  
> s data is on line 1  
> This data is on line 2  
> This data is on line 3  
> ```
> ^sran-1681124028529
 
> [!srhl2] [[SR35@Working With File I/O in Python – dbader.org|📄]] <mark style="background-color: #ffeb3b">Highlights</mark> [🧷](<http://localhost:7026/unread/35#id=1681124023840>) [🌐](<http://localhost:7026/reading/35#id=1681124023840>) #一般   
> heck the current position of the pointer, you can use the **`fileobject.tell()`** method, which returns a decimal value for where the pointer is at in the current file
> ^sran-1681124023840
 
 