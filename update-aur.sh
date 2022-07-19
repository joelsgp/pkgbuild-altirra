#!/bin/bash
#rm -rf aur/*
mkdir -p aur
git ls-tree --name-only master | xargs cp -ut aur/
