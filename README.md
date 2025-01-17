# Dart with Unikraft

Example project showing running Dart with Unikraft base unikernel

## Steps to Run

- Verifying with Docker

```sh
docker build --platform linux/amd64 -t dart-app .
```

```sh
docker run --platform linux/amd64 -p 443:8080 dart-app
```

- Building with Kraft

```sh
kraft build
```

```sh
kraft run -p 443:8080 --plat qemu --arch x86_64 -M 512M
```
