project "Floraft"
    kind "StaticLib"
    language "C++"

    -- Set the project-specific source and header files
    files { "src/*.cpp", "src/*.h" }
    -- Link against the SFML libraries
    links { "sfml-graphics", "sfml-window", "sfml-system" }

    filter "configurations:Debug"
        symbols "On"
        defines { "DEBUG" }

    filter "configurations:Release"
        optimize "On"
        defines { "RELEASE" }

