LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS:= -O3 -Dunix -DHAVE_ANSIC_C -DHAVE_PREAD -DNAME='"linux-arm"' -DLINUX_ARM -Dlinux -lrt -lpthread

LOCAL_SRC_FILES:= iozone.c libbif.c

LOCAL_MODULE:= iozone

# ignore warning that cause compile failed on Android M
LOCAL_CFLAGS +=-Wno-unused-parameter -Wno-empty-body -Wno-sign-compare -Wno-format -Wno-error=implicit-function-declaration

include $(BUILD_EXECUTABLE)

