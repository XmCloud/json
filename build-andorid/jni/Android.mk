#ע����Andriod.mk�еĵ�ǰĿ¼������mklib.sh��Ŀ¼
#��������ı���Ҫ��mklib.sh ����Ŀ¼Ϊ��׼��ǧ��ע��
LOCAL_PATH:= $(call my-dir)
ROOT_PATH := $(LOCAL_PATH)/../../

include $(CLEAR_VARS)
LOCAL_MODULE := json

FILE_LIST := $(wildcard $(ROOT_PATH)src/*.c*)
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

LOGCAL_CFLAGS += -DENABLE_TRACE
LOCAL_LDLIBS += -L/home/share/fujiafeng/android-ndk-r8/sources/cxx-stl/gnu-libstdc++/libs/armeabi -ldl -llog -lgnustl_shared

LOCAL_C_INCLUDES += $(ROOT_PATH)/include/
LOCAL_C_INCLUDES += $(ROOT_PATH)/src/

#include $(BUILD_STATIC_LIBRARY)
include $(BUILD_SHARED_LIBRARY)
