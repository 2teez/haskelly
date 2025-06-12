#!/usr/bin/env bash
# author: toga && omitida
# date: 12 June, 2025
# description: haskell script that makes haskell file or
# a complete haskell application from scrach

# use a global variable filename
filename=
# write to file
# takes two parameters of a name and a parameter
function write_to_file() {
    filename="${1}"
    filename_check "${filename}"
    marker="${2}" # should be either simple or generic
    if [[ "${marker}" == "simple" ]] then
        echo "
        module Main where
        main = print \"Hello, World!\"
        " > "${filename}"
    else
        echo "
        {-# LANGUAGE TypeApplications #-}
        {-# LANGUAGE DerivingStrategies #-}
        {-# LANGUAGE OverloadedStrings #-}
        module Main where

        import Data.ByteString (ByteString)
        import Data.Text (Text)

        helloWorld :: ByteString
        helloWorld = \"Hello, World\"

        main :: IO ()
        main = print helloWorld
        " > "${filename}"
    fi
}
# make a file
function filename_check() {
    filename="${1^}"
    file_extension="${filename#*.}"
    file_exacted_name="${filename%.*}"

    if [[ "${file_extension}" == "${file_exacted_name}" ]]; then
        filename="${filename}.hs"
    else
        if [[ "${file_extension}" != "hs" ]]; then
            filename="${file_exacted_name}.hs"
        fi
   fi
}
# helper function
function help() {
    echo "${0} <option> <filename>"
    echo "Options avaliable:"
    echo "-c    compile and run the haskell program."
    echo "-g    create a generic haskell program."
    echo "-h    display a help message."
    echo "-s    create a simple haskell script."
    echo "-S    run a haskell program as a script."
    exit 1
}

[[ "${#}" -ne 2 ]] && help

optstring="c:s:S:g:h"

while getopts "${optstring}" opt; do
    case "$opt" in
        c)
            filename="${OPTARG}"
            raw_file="${filename%.*}"
            ghc "${filename}" && ./"${raw_file}"
            rm "${raw_file}" "${raw_file}.o" "${raw_file}.hi"
        ;;
        g)
            filename="${OPTARG}"
            write_to_file "${filename}" "generic"
        ;;
        s)
            filename="${OPTARG}"
            write_to_file "${filename}" "simple"
        ;;
        h)
            help
        ;;
        *)
           echo "${opt}" "Not a valid avaliable option"
           help
        ;;
    esac
done
