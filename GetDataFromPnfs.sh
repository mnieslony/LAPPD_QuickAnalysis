#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./GetDataFromPnfs.sh PRINCIPAL"
    echo "Please provide your username for the anniegpvm machines as an argument"
    echo "Exitting"
    exit 1
fi

PRINCIPAL=$1

echo ">>>> kerberize ... <<<"
kinit -f ${PRINCIPAL}@FNAL.GOV

echo ">>>> scp data files from pnfs .... <<<"
PATH_PNFS=/pnfs/annie/persistent/users/mnieslon/lappd_quick_analysis

echo ">>>> ... LAPPDEventStatistics <<<"
mkdir LAPPDEventStatistics
scp -o GSSAPIAuthentication=true ${PRINCIPAL}@anniegpvm01.fnal.gov:${PATH_PNFS}/LAPPDEventStatistics/* LAPPDEventStatistics/

echo ">>>> ... LAPPDFiles <<<"
mkdir LAPPDFiles
scp -o GSSAPIAuthentication=true ${PRINCIPAL}@anniegpvm01.fnal.gov:${PATH_PNFS}/LAPPDFiles/* LAPPDFiles/

echo ">>>> ... LAPPDStatistics <<<"
mkdir LAPPDStatistics
scp -o GSSAPIAuthentication=true ${PRINCIPAL}@anniegpvm01.fnal.gov:${PATH_PNFS}/LAPPDStatistics/* LAPPDStatistics/

echo ">>>> ... LAPPDStatistics_combined <<<"
mkdir LAPPDStatistics_combined
scp -o GSSAPIAuthentication=true ${PRINCIPAL}@anniegpvm01.fnal.gov:${PATH_PNFS}/LAPPDStatistics_combined/* LAPPDStatistics_combined/

echo ">>>> ... NumEvents <<<"
mkdir NumEvents
scp -o GSSAPIAuthentication=true ${PRINCIPAL}@anniegpvm01.fnal.gov:${PATH_PNFS}/NumEvents/* NumEvents

echo ">>>> ... runlists <<<"
mkdir runlists
scp -o GSSAPIAuthentication=true ${PRINCIPAL}@anniegpvm01.fnal.gov:${PATH_PNFS}/runlists/* runlists

echo ">>>> ... filesizes <<<"
scp -o GSSAPIAuthentication=true ${PRINCIPAL}@anniegpvm01.fnal.gov:${PATH_PNFS}/filesizes.txt .

echo ">>>> create plots directory .... <<<"
mkdir plots

echo ">>>>> done ... <<<"
