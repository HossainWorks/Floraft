project "Sandbox"
    kind "ConsoleApp"
    language "C++"

    -- Set the project-specific source and header files
    files { "src/*.cpp", "src/*.h" }

    -- Link against the Floraft static library and the SFML libraries
    links { "Floraft", "sfml-graphics", "sfml-window", "sfml-system" }

    filter "configurations:Debug"
        symbols "On"
        defines { "DEBUG" }

    filter "configurations:Release"
        optimize "On"
        defines { "RELEASE" }

