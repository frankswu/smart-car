#!/bin/bash
while getopts ":f:t:" opt; do
    case $opt in
        t)
            espeak -vzh "$OPTARG"
            exit 1
            ;;
        f)
            aplay "$OPTARG"
            echo ""
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." 
            exit 1
            ;;
    esac
done