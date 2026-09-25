#! /bin/bash

xpra start desktop :100 \
    --bind-tpc=100.155.92.2:8000 \
    --html=on \
    --daemon=yes \
    --start=lxqt-session \
    --exit-with-children=no \
    --exit-with-client=no

echo "Started on 100.155.92.2:8000!"