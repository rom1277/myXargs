
# myXargs
<h3 id="ex02">Running Things</h3>

Do you know what `xargs` is? You can read about it [here](https://shapeshed.com/unix-xargs/), for example. Let's implement a similar tool — in this exercise, you will have to write a utility that:

1) treats all parameters as a command, like `wc -l` or `ls -la`;
2) build a command by appending all the lines that are fed into the program's stdin as arguments to that command, and then run it. So if we run:

```
~$ echo -e "/a\n/b\n/c" | ./myXargs ls -la
```

it should be equivalent to running:

```
~$ ls -la /a /b /c
```

You can test this tool together with those from the previous exercises, so:

```
~$ ./myFind -f -ext 'log' /path/to/some/logs | ./myXargs ./myWc -l
```

will recursively calculate line counts for all ".log" files in the directory `/path/to/some/logs`.
