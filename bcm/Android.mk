#------------------------------------------------------------------------------
# Copyright (c)2010-2015 Freescale Semiconductor, Inc.
#

ifeq ($(BOARD_WLAN_DEVICE),UNITE)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE := bcmdhd.cal
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm
LOCAL_SRC_FILES := bcmdhd.cal
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fw_bcmdhd.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm
LOCAL_SRC_FILES := fw_bcmdhd.bin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := fw_bcmdhd_apsta.bin
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm
LOCAL_SRC_FILES := fw_bcmdhd_apsta.bin
include $(BUILD_PREBUILT)

ifneq ($(BOARD_HAVE_BLUETOOTH_BCM),)
	include $(CLEAR_VARS)
	LOCAL_MODULE := Type_ZP.hcd
	LOCAL_MODULE_TAGS := optional
	LOCAL_MODULE_CLASS := EXECUTABLES
	LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware/bcm
	LOCAL_SRC_FILES := Type_ZP.hcd
	include $(BUILD_PREBUILT)
endif


endif
