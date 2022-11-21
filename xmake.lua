includes("build_proj.lua")
_config_project({
	project_name = "spdlog",
	project_kind = "shared",
	batch_size = 64
})
local add_includedirs = _get_add_includedirs()
local add_defines = _get_add_defines()
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
