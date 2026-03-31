
# Don't enforce the existence of fluid when asked to skip it.
# (See https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=855040
# and https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1028165.)
if(FLTK_SKIP_FLUID)
  if(_cmake_import_check_targets)
    list(REMOVE_ITEM _cmake_import_check_targets fluid)
  else()
    list(REMOVE_ITEM _IMPORT_CHECK_TARGETS fluid)
  endif()
endif()
