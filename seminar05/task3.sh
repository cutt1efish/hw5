#!/bin/bash
read com
if [[ "$com" =~ "^issue-[0-9]{1,} *" ]];then
    echo commit format test passed
    exit 0
else
    echo commit format test failed
    exit 1
fi