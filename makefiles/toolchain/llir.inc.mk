CC          = llir_x86_64-pc-none-clang
CXX         = llir_x86_64-pc-none-clang++
CCAS        = $(CC)
AS          = llir_x86_64-pc-none-as
AR          = llir_x86_64-pc-none-ar
NM          = llir_x86_64-pc-none-nm
LINK        = llir_x86_64-pc-none-clang
LINKXX      = llir_x86_64-pc-none-clang++
OBJCOPY     = llir_x86_64-pc-none-objcopy
OBJDUMP     = llir_x86_64-pc-none-objcopy
SIZE        = size

include $(RIOTMAKE)/tools/gdb.inc.mk

CFLAGS += -Wno-atomic-alignment
CFLAGS += -Wno-unknown-warning-option

OPTIONAL_CFLAGS_BLACKLIST += -fno-delete-null-pointer-checks
OPTIONAL_CFLAGS_BLACKLIST += -Wformat-overflow
OPTIONAL_CFLAGS_BLACKLIST += -Wformat-truncation
