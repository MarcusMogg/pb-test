target("pb3-v1")
    set_kind("static")
    add_packages("protobuf-cpp")
    add_rules("protobuf.cpp")
    add_files("pb3/v1/*.proto")
    add_includedirs("pb3/v1/", {public = true})

target("pb3v2")
    set_kind("static")
    add_packages("protobuf-cpp", {public = true})
    add_files("pb3/v2/enum.proto", {proto_public = true})
    add_rules("protobuf.cpp")
    

target("pb3v2-msg")
    set_kind("static")
    add_packages("protobuf-cpp", {public = true})
    add_files("pb3/v2/msg.proto", {proto_public = true})
    add_rules("protobuf.cpp")
    add_deps("pb3v2")
    add_links("pb3v2")


target("gateway")
    set_kind("binary")
    add_files("gateway.cc")
    add_deps("pb3v2-msg")
    --    add_links("pb3v2-msg")


-- target("middle")
--     set_kind("binary")
--     add_deps("pb3-v1")
--     add_files("middle.cc")
-- target_end()

-- target("reader")
--     set_kind("binary")
--     add_deps("pb3-v2")
--     add_files("reader.cc")
-- target_end()