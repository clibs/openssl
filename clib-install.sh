#!/bin/bash

./config "${@}"
make | grep 'make depend' && {
  make depend
}

make test
make install
