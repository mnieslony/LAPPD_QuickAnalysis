# Quick LAPPD Analysis

The `ipython` notebook in this repository evaluates the number of LAPPD events which are contained in processed BoostStore files and also evaluates additional information, such as the drift times between the trigger system and the LAPPD.

It uses `LAPPDStatistics*` and `NumEvents*` input files, which can be generated with the `checkLAPPDStatus` and `GetLAPPDEvents` toolchains in ToolAnalysis.

Sample files for this script can be downloaded from the `/pnfs` area with the `GetDataFromPnfs.sh` script.

# How to run

Firstly, in order to get the necessary files, run the `GetDataFromPnfs.sh` script with your username as the argument:

```
./GetDataFromPnfs.sh username
```

Then, you can just start a jupyter notebook and run all the cells in the notebook to create the plots:

```
jupyter notebook &
```


