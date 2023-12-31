target("pb3-v1")
    set_kind("static")
    add_packages("protobuf-cpp", {public = true})
    add_rules("protobuf.cpp")
    add_files("pb3/v1/*.proto", {proto_public = true})
    set_policy("build.across_targets_in_parallel", false)

target("pb3-v2")
    set_kind("static")
    add_packages("protobuf-cpp", {public = true})
    add_files("pb3/v2/*.proto", {proto_public = true})
    add_rules("protobuf.cpp")
    set_policy("build.across_targets_in_parallel", false) -- https://github.com/xmake-io/xmake/issues/4080

target("gateway")
    set_kind("binary")
    add_files("gateway.cc")
    add_deps("pb3-v2")

target("middle")
    set_kind("binary")
    add_deps("pb3-v1")
    add_files("middle.cc")

target("reader")
    set_kind("binary")
    add_deps("pb3-v2")
    add_files("reader.cc")