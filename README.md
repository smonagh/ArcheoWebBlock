# ArcheoWebBlock

## About
ArcheoWebBlock is a small utility I build for myself that blocks websites natively using
/etc/hosts on linux distributions. It depends on two files being created:
1. permanent.txt 2. temporary.txt. And the use of crontab to configure the 
hours under which the temporary list will be restricted.

## Installation
The program can be installed using the configure file. Root privileges
are required for running. You usually should create the permanent.txt before
running, however, these can be added later by running the command

```
cat permanent.txt >> /etc/hosts
```

To configure the temporary hours under which the temporary sites can be
accessed, you need to specify this in crontab. This can be accessed by running,

```
crontab -l
```

## Blocking Websites
To block a website, simply add the following to either the permanent or
temporary file:

```
127.0.0.1 website.com
```

This will cause the website to be unreachable. Alternatively, if you want to 
redirect to another site then add that site's IP address rather than the local
host.

## Contact
steven@archeostyle.com
