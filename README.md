# jupyter-lab

Docker build script for [Jupyter Lab](https://github.com/jupyterlab/jupyterlab)
on Python 3.7.

## Usage

```bash
docker run -d -p <host_port>:8888 --name=<container_name> steadbytes/jupyter-lab
```

Open a browser at `http://localhost:<host_port>`.

**Default password** = `jupyter`

## Pre-installed Python Packages
- [calysto_scheme](https://github.com/Calysto/calysto_scheme)
- [requests](http://docs.python-requests.org/en/master/)
- [numpy](https://github.com/numpy/numpy)
- [tqdm](https://github.com/tqdm/tqdm)
- [matplotlib](https://matplotlib.org/)

## Extensions

- [jupyterlab-vim](https://github.com/jwkvam/jupyterlab-vim)

## Additional Kernels

- [calysto_scheme](https://github.com/Calysto/calysto_scheme)
