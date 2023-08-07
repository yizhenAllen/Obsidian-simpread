> [!Error] readlines function, UnicodeDecodeError: 'utf-8' codec can't decode byte 0xfe in position 0: invalid start byte
> 这是打开的文件格式不匹配导致的
> change the code from
> `with open('evil_unicode.txt', 'r') as f:`
> to
> `with open('evil_unicode.txt', 'r', errors='replace') as f:`
> or (recommended)
> `with open('evil_unicode.txt', 'r', errors='ignore') as f:`
> and it's done

