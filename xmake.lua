includes("build_proj.lua")
ConfigProject({
	project_name = "spdlog",
	project_kind = "shared",
	batch_size = 64
})
local add_includedirs = GetAddIncludeDirs()
local add_defines = GetAddDefines()
add_includedirs("../fmt/include/", "include/", {
	public = true
})
add_defines("SPDLOG_NO_EXCEPTIONS", "SPDLOG_NO_THREAD_ID", "SPDLOG_DISABLE_DEFAULT_LOGGER", "SPDLOG_COMPILED_LIB",
				"FMT_SHARED", "SPDLOG_FMT_EXTERNAL", "SPDLOG_SHARED_LIB", "FMT_HEADER_ONLY=1", "FMT_CONSTEVAL=constexpr",
				"FMT_USE_CONSTEXPR=1", "FMT_EXCEPTIONS=0", {
					public = true
				})
add_defines("FMT_EXPORT", "spdlog_EXPORTS")
add_files("src/*.cpp|src/fmt.cpp")
