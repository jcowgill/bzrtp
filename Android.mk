LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS += -DHAVE_LIBXML2

LOCAL_MODULE := libbzrtp

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES =       src/bzrtp.c \
						src/cryptoMbedTLS.c \
						src/cryptoUtils.c \
						src/packetParser.c \
						src/stateMachine.c \
						src/zidCache.c \
						src/pgpwords.c

LOCAL_STATIC_LIBRARIES += mbedcrypto \
			  liblpxml2

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/../externals/mbedtls/include \
	$(LOCAL_PATH)/../externals/libxml2/include \
	$(LOCAL_PATH)/../externals/build/libxml2


include $(BUILD_STATIC_LIBRARY)


