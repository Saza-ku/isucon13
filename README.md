## ISUCON X

### /etc/hosts
```
18.176.233.191 isucon1
13.230.175.141 isucon2
35.72.52.25 isucon3

18.176.233.191 pipe.u.isucon.dev
18.176.233.191 test001.u.isucon.dev
```

### SSH forwarding for netdata

```sh
ssh -fNT -L 19991:127.0.0.1:19999 isucon@isucon1
ssh -fNT -L 19992:127.0.0.1:19999 isucon@isucon2
ssh -fNT -L 19993:127.0.0.1:19999 isucon@isucon3
```

### Notes
