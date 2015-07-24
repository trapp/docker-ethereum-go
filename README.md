# Docker Container for the go-ethereum Client

This container runs the official go-ethereum client.

It has the *solc* complier enabled to compile Solidity contracts.

By default, it will unlock the first (primary) account based on the password file located in /pw.

To create the account do the following:

### Create the `pw` file

    echo "<secure-password>" > pw

### Build the container

    docker build -t go-ethereum .

### Create the first account (change /tmp/eth to your desired data folder)

    docker run -it \
        -v /tmp/eth:/root/.ethereum \
        -v $(pwd)/pw:/pw \
        --entrypoint geth \
        go-ethereum  \
        --password /pw account new

### Ready to go. Run the container:


	docker run -d \
        -v /tmp/eth:/root/.ethereum \
        -v $(pwd)/pw:/pw \
        -p 0.0.0.0:8545:8545
        go-ethereum 


