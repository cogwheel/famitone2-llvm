install(FILES famitone2.h TYPE INCLUDE)

add_platform_library(nes-famitone2
  famitone2.s
  famitone2.c
  music-bank.c
  music-bank.s
  sounds-bank.c
  sounds-bank.s
)
target_include_directories(nes-famitone2 PRIVATE .)
target_link_libraries(nes-famitone2 PRIVATE common-asminc nes-neslib-asminc)

add_platform_library(nes-ft2-fixed-wrappers
  fixed-wrappers.s
  music-bank-wrappers.s
  sounds-bank-wrappers.s
)
target_link_libraries(nes-ft2-fixed-wrappers PRIVATE common-asminc)
