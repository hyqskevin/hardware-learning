# Provides PLATFORMS_INClUDE, PLATFORMS_SOURCE

if (WIN32)
	set(PLATFORMS_INCLUDE ${CMAKE_CURRENT_LIST_DIR}/win)
	aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/win PLATFORMS_SOURCE)
elseif(UNIX OR CYGWIN)
	set(PLATFORMS_INCLUDE ${CMAKE_CURRENT_LIST_DIR}/posix)
	aux_source_directory(${CMAKE_CURRENT_LIST_DIR}/posix PLATFORMS_SOURCE)
endif(WIN32)
