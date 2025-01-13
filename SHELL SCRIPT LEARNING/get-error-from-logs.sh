#!/bin/bash

set -x

curl https://raw.githubusercontent.com/iam-veeramalla/sandbox/refs/heads/main/log/dummylog01122022.log | grep TRACE
