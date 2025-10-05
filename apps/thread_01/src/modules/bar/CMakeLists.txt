target_sources_ifdef(CONFIG_APP_BAR app PRIVATE
 ${CMAKE_CURRENT_SOURCE_DIR}/bar.c
)
target_include_directories(app PRIVATE .)
