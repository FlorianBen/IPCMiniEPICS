#!../../bin/linux-x86_64/IPCMinitest

#- You may have to change IPCMinitest to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/db" 
epicsEnvSet "IP" "192.168.1.32"
epicsEnvSet "IPport" "5200"

epicsEnvSet "P" "IPMTB:"
epicsEnvSet "R" "IPCMini:"

## Register all support components
dbLoadDatabase "dbd/IPCMinitest.dbd"
IPCMinitest_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure("L0","$(IP):$(IPport)",0,0,0) 
epicsThreadSleep(2)

## Load record instances
dbLoadRecords("db/devIPCMini.db","P=$(P),R=$(R),PORT=L0,A=0")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=fbenedet"
