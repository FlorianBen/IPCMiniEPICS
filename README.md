# EPICS support for the IPCMini pump controller (WIP)

An EPICS soft support for the Agilent IPCMini pump controller based on StreamDevice (WIP).

## Features

- [ ] Basic data retrieval:
  - [ ] Module information
  - [ ] Vacuum level
- [ ] Basic control:
  - [ ] HV on/off
  - [ ] Setpoint

## Prerequisites

- EPICS base (tested with 7.0.2 and 3.15)
- Asyn (tested with 4.31)
- StreamDevice
- Control System Studio or Phoebus for OPIs

## Configuration

The RELEASE file must be edited according to your EPICS installation. As well, the StreamDevice module must be configured correctly.

I'm using a serial to TCP converter, so the st.cmd must be configured with respect to your interface.