TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = IPCMinitest
# IPCMinitest.dbd will be created and installed
DBD += IPCMinitest.dbd

# IPCMinitest.dbd will be made up from these files:
IPCMinitest_DBD += base.dbd

# Include dbd files from all support applications:
IPCMinitest_DBD += stream.dbd
IPCMinitest_DBD += asyn.dbd
IPCMinitest_DBD += drvAsynIPPort.dbd

# Add all the support libraries needed by this IOC
IPCMinitest_LIBS += asyn stream

# IPCMinitest_registerRecordDeviceDriver.cpp derives from IPCMinitest.dbd
IPCMinitest_SRCS += IPCMinitest_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
IPCMinitest_SRCS_DEFAULT += IPCMinitestMain.cpp
IPCMinitest_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#IPCMinitest_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
IPCMinitest_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

