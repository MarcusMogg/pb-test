add_rules("mode.debug", "mode.release")

set_languages("cxx23")

add_requires("protobuf-cpp" )

includes("src")