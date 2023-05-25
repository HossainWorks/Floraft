
-- The main workflow
function DefaultProject(name, type)
	project(name)
	kind(type)
	language "C++"

	files { "src/*.cpp", "src/*.h" }
	targetdir "%{wks.location}/Binaries/%{prj.name}%{cfg.platform}-%{cfg.architecture}"


	filter "configurations:Debug"
		symbols "On"
		defines { "DEBUG" }

	filter "configurations:Release"
		optimize "On"
		defines { "RELEASE" }

	filter {}
end


workspace "FloraftEngine"
	architecture "x86_64"
	configurations { "Debug", "Release" }

	-- Enable C++17 support
	cppdialect "C++17"

	-- Add the SFML include and library directories
	includedirs { "/usr/include", "Floraft/src" }
	libdirs { "/usr/lib" }


-- Include premake5.lua from Floraft and Sandbox folder
include "Floraft"
include "Sandbox"
