#!/bin/bash
echo -n 'Branch: '
git branch | grep -e "^*" | cut -d' ' -f 2
git log -1