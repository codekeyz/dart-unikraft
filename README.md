# Dart with Unikraft

Example project showing running Dart with Unikraft base unikernel

## Steps to Run

```sh
kraft build
```

```sh
kraft run -p 443:8080 --plat qemu --arch x86_64 -M 512M
```
