---
title:  "Shell / Terminal Commands"
layout: post
permalink: /writing/2017/10/linuxTerminal/
date:   2017-10-03 15:36:27
categories: [linux, terminal]
comments: true
---

| Command or Key | What does it do
| -------------- | --------------------------------------------- |
| Ctrl + L       | Clears the Screen |  
| ls -al /etc    | List the contents of /etc directory (You do not need to be in the directory to list contents) |
| rm -rf /dir1/  | If you want to delete a directory and all of its contents, use the command rm -rf |
| echo $SHELL    | This command finds your default shell |
| grep           | Pattern Matching|
| egrep          | grep command for extended regular expressions |
| >>             | Appends to the end of the file |
| >              | Redirects to a file |  
| find path pattern | If you do not specify a path, find starts in the current working directory and looks through all subdirectories for the specified pattern|

{% highlight bash %}
## find a particular file in the current directory
rock$ find . -name WebConfig.java
./event-tracker/src/main/java/com/coding/thoughtworks/WebConfig.java

## A neat trick is to then copy the above path and use an editor to open the file 
rock$ sudo atom ./event-tracker/src/main/java/com/coding/thoughtworks/WebConfig.java
Password:

## YaY ! The file opens in an editor
{% endhighlight %}