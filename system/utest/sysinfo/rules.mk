# Copyright 2017 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := usertest

MODULE_SRCS += \
    $(LOCAL_DIR)/main.cpp

MODULE_NAME := sysinfo-test

MODULE_LIBS := \
    system/ulib/unittest \
    system/ulib/fdio \
    system/ulib/zircon \
    system/ulib/c

MODULE_STATIC_LIBS := \
    system/ulib/fbl \
    system/ulib/zx

MODULE_FIDL_LIBS := \
    system/fidl/fuchsia-sysinfo

include make/module.mk
