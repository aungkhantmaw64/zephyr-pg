target_sources_ifdef(
  CONFIG_IOT_NODE_MODULES_ENVIRONMENTAL
  app
  PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}/environmental.c
)
target_include_directories(app PRIVATE .)
