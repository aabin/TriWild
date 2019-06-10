################################################################################
include(DownloadProject)

# With CMake 3.8 and above, we can hide warnings about git being in a
# detached head by passing an extra GIT_CONFIG option
if(NOT (${CMAKE_VERSION} VERSION_LESS "3.8.0"))
    set(TRIWILD_EXTRA_OPTIONS "GIT_CONFIG advice.detachedHead=false")
else()
    set(TRIWILD_EXTRA_OPTIONS "")
endif()

# Shortcut function
function(triwild_download_project name)
    download_project(
        PROJ         ${name}
        SOURCE_DIR   ${THIRD_PARTY_DIR}/${name}
        DOWNLOAD_DIR ${THIRD_PARTY_DIR}/.cache/${name}
        QUIET
        ${TRIWILD_EXTRA_OPTIONS}
        ${ARGN}
    )
endfunction()

################################################################################

## aabbcc
function(triwild_download_aabbcc)
    triwild_download_project(aabbcc
        GIT_REPOSITORY https://github.com/lohedges/aabbcc
        GIT_TAG        bff8267c684cfec9a65d7ce534e18c57a1a306f3
    )
endfunction()


## geogram
function(triwild_download_geogram)
    triwild_download_project(geogram
        GIT_REPOSITORY https://github.com/alicevision/geogram
        GIT_TAG        0ac4a5889f8eaef9372b888126deec2334128158
    )
endfunction()


## libigl
function(triwild_download_igl)
    triwild_download_project(libigl
        GIT_REPOSITORY https://github.com/libigl/libigl
        GIT_TAG        608fc010a5d65f2edede2e7b64cf09e248d76e15
    )
endfunction()


## nlopt
function(triwild_download_nlopt)
    triwild_download_project(nlopt
        GIT_REPOSITORY https://github.com/stevengj/nlopt
        GIT_TAG        37b74a8c2037eea5dc72fea7eeb9b850fa978913
    )
endfunction()


