includes("build_proj.lua")
target("spdlog")
_config_project({
	project_kind = "shared",
	batch_size = 64,
	no_rtti = true
})
add_includedirs("include/", {
	public = true
})
add_defines("SPDLOG_NO_EXCEPTIONS", "SPDLOG_NO_THREAD_ID", "SPDLOG_DISABLE_DEFAULT_LOGGER",
				"FMT_SHARED", "SPDLOG_SHARED_LIB", "FMT_CONSTEVAL=constexpr", "FMT_USE_CONSTEXPR=1", "FMT_EXCEPTIONS=0", {
					public = true
				})
add_defines("FMT_EXPORT", "spdlog_EXPORTS", "SPDLOG_COMPILED_LIB")
add_files("src/*.cpp")
target_end()
