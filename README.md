# dcagatay/sphinx-builder

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/dcagatay/sphinx-builder)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/dcagatay/sphinx-builder)
![MicroBadger Size](https://img.shields.io/microbadger/image-size/dcagatay/sphinx-builder)
![MicroBadger Layers](https://img.shields.io/microbadger/layers/dcagatay/sphinx-builder)
![Docker Pulls](https://img.shields.io/docker/pulls/dcagatay/sphinx-builder)

This docker image can be used to create statical Sphinx documentation. Latex for PDF conversion, and Draw.io CLI is included with `drawio => png` conversion.


## Usage

### Basic Usage
You can directly give Sphinx *Makefile* commands. For example, `make html` for building static site.

```bash
docker run --rm -it -v "$PWD/sample-docs:/docs" dcagatay/sphinx-builder make html
```

### Livehtml
If you include, `sphinx-autobuild` package in your `requirements.txt` you can directly view document as you edit the documentation.

```bash
docker run --rm -it -p "8000:8000" -v "$PWD/sample-docs:/docs" dcagatay/sphinx-builder make livehtml
```

### `docker-compose` Usage
You can also use `docker-compose.yml` for any usage.

```bash
docker-compose up
```

### Draw.io Auto-Export Usage

You just include your `drawio` files, it automatically converts them to PNG. See `Makefile` for details.
