workspace "FloraftEngine"
    architecture "x86_64"
    configurations { "Debug", "Release" }

    -- Enable C++17 support
    cppdialect "C++17"

    -- Add the SFML include and library directories
    includedirs { "/usr/include", "Floraft/src" }
    libdirs { "/usr/lib" }

include "Floraft"
include "Sandbox"
