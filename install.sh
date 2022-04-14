#!/bin/bash

SCRIPT_DIR=$(dirname $(realpath $0))

cp -r ${SCRIPT_DIR}/theme ${PWD}
cp -r ${SCRIPT_DIR}/scripts ${PWD}
cp ${SCRIPT_DIR}/Makefile ${PWD}
cp ${SCRIPT_DIR}/*.css ${PWD}
cp ${SCRIPT_DIR}/*.js ${PWD}/docs
