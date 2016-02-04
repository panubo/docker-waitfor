# Waitfor

[![Docker Repository on Quay.io](https://quay.io/repository/macropin/evaluate-env/status "Docker Repository on Quay.io")](https://quay.io/repository/macropin/evaluate-env)

Docker container to wait for a file and then exit.

Useful for preventing race conditions when chaining backgrounded containers.

## Usage

`docker run panubo/waitfor <file> <timeout>`
