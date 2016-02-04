# Waitfor

Docker container to wait for a file and then exit.

Useful for preventing race conditions when chaining backgrounded containers.

## Usage

`docker run panubo/waitfor <file> <timeout>`
