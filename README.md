# awscli-eksctl

# What is awscli?

> Awscli is the Amazon web services command line interface.

[Overview of awscli](https://docs.aws.amazon.com/cli/index.html)

# What is eksctl?

> `eksctl` is a simple CLI tool for creating clusters on EKS - Amazon’s new managed Kubernetes service for EC2.

[Overview of eksctl](https://eksctl.io/introduction/getting-started/)

# TL;DR;

```bash
$ docker run -ti --rm statful/awscli-eksctl
```

```bash
$ docker run -ti -e 'AWS_ACCESS_KEY_ID=********************' -e 'AWS_SECRET_ACCESS_KEY=****************************************' --rm statful/awscli-eksctl eksctl get clusters
```

```bash
$ docker run -ti -v '/Users/statful/.aws:/root/.aws' --rm statful/awscli-eksctl eksctl get clusters
```


# Supported tags and respective `Dockerfile` links

The tags that match the following should be supported
* awscli-X.Y.Z-eksctl-X.Y.Z
* awscli-X.Y-eksctl-X.Y

where `X`, `Y` and `Z` correspond to major minor and patch numbers following a semantic versioning approach of each project mentioned before (e.g.: awscli-2.0.34-eksctl-0.22.0 or awscli-2.0-eksctl-0.22).

Subscribe to project updates by watching the [statful/awscli-eksctl GitHub repo](https://github.com/statful/awscli-eksctl).

# Get this image

The recommended way to get the Statful awscli-eksctl Docker Image is to pull the prebuilt image from the [Docker Hub Registry](https://hub.docker.com/r/statful/awscli-eksctl).

```bash
$ docker pull statful/awscli-eksctl:latest
```

To use a specific version, you can pull a versioned tag. You can view the [list of available versions](https://hub.docker.com/r/statful/awscli-eksctl/tags/) in the Docker Hub Registry.

```bash
$ docker pull statful/awscli-eksctl:[TAG]
```

If you wish, you can also build the image yourself.

```bash
$ docker build -t statful/awscli-eksctl:latest 'https://github.com/statful/awscli-eksctl.git#master'
```

# Configuration

## Running commands

To run commands inside this container you can use `docker run`, for example to execute `eksctl --version` you can follow the example below:

```bash
$ docker run --rm --name eksctl statful/awscli-eksctl:latest -- eksctl version
```

Consult the [eksctl Reference Documentation](https://eksctl.io/usage/creating-and-managing-clusters/) or the [AWS CLI Reference Documentation](https://docs.aws.amazon.com/cli/index.html) to find the completed list of commands available.

## AWS Credentials

AWS credentials can either be passed by environment variables, or by mounting a volume with aws credentials file under `/root/.aws`.

### Environment variables

```bash
$ docker run -ti -e 'AWS_ACCESS_KEY_ID=********************' -e 'AWS_SECRET_ACCESS_KEY=****************************************' --rm statful/awscli-eksctl aws s3 ls
```

### AWS directory

```bash
docker run -ti -v '/Users/statful/.aws:/root/.aws' --rm statful/awscli-eksctl aws s3
```

# Contributing

We'd love for you to contribute to this container. You can request new features by creating an [issue](https://github.com/statful/awscli-eksctl/issues), or submit a [pull request](https://github.com/statful/awscli-eksctl/pulls) with your contribution.

# Issues

If you encountered a problem running this container, you can file an [issue](https://github.com/statful/awscli-eksctl/issues). For us to provide better support, be sure to include the following information in your issue:

- Host OS and version
- Docker version (`docker version`)
- Output of `docker info`
- Version of this container
- The command you used to run the container, and any relevant output you saw (masking any sensitive information)

# License

Copyright (c) 2019 Statful. All rights reserved.

This work is licensed under the terms of the MIT license.  
For a copy, see <https://opensource.org/licenses/MIT>.

