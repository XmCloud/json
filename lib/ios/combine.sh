#!/bin/sh
lipo -create ./libjson-device.a ./libjson-simulator.a -output libagentclient.a

