target_sources_ifdef(CONFIG_APP_FOO app PRIVATE
 ${CMAKE_CURRENT_SOURCE_DIR}/foo.c
)
target_include_directories(app PRIVATE .)
