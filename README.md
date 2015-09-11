## Cheats 

This my cheetsheets for different user commands that I am using in my daily work.

## Syncing on different devices

For pushing changes you can run command like this (from bash) in root of repository:


```
( git add --all && git commit -m $(date  +%F_%R) ) && git push 
```

You can use `crond`  for syncronizing files. For example pull changes at morning from work and push at evening.


