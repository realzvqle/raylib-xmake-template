set_project("game")

set_xmakever("2.6.0")

set_languages("c99")

target("game")
    set_kind("binary")  
    add_files("src/*.c")
    add_files("src/**/*.c") 
    add_includedirs("src") 

    if is_os("windows") then
        add_linkdirs("lib/windows") 
        add_links("raylibdll", "raylib") 
        add_syslinks("gdi32", "winmm") 
    else
        add_linkdirs("lib/linux") 
        add_links("libraylib.a") 
    end