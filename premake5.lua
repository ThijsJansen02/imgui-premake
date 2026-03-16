project "ImGui"
	kind "StaticLib"
	language "C++"
	targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}/int")
	staticruntime "On"

	files
	{
		"*.h",
		"*.cpp"
	}

	includedirs
	{
		"%{IncludeDir.imgui}"
	}

	
	libdirs
	{
		
	}


	links 
	{
		
	}


	defines 
	{
		"IMGUI_API=__declspec(dllexport)"
	}

	filter "system:windows"
		cppdialect "C++17"
		systemversion "latest"

		defines
		{
			"PH_PLATFORM_WINDOWS"
		}

	filter "configurations:Debug"
		defines "PH_DEBUG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "PH_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "PH_DIST"
		runtime "Release"
		optimize "on"

