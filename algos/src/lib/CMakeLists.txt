add_library(SALSSA_FM MODULE
    Transforms/IPO/SALSSA_FM.cpp
    Transforms/IPO/FMObjFileSize.hpp
)
add_library(LCS_FM MODULE
    Transforms/IPO/LCS_FM.cpp
    Transforms/IPO/FMObjFileSize.hpp
)
add_library(ILP_FM MODULE
    Transforms/IPO/ILP_FM.cpp
    Transforms/IPO/FMObjFileSize.hpp
)
set_property(TARGET SALSSA_FM PROPERTY POSITION_INDEPENDENT_CODE ON)
set_property(TARGET LCS_FM PROPERTY POSITION_INDEPENDENT_CODE ON)
set_property(TARGET ILP_FM PROPERTY POSITION_INDEPENDENT_CODE ON)
set(CMAKE_CXX_STANDARD 14)

# Uncomment the following to link CPLEX libraries
# target_include_directories(LLVMFM PRIVATE ${CPLEX_INCLUDE_DIR})
# target_link_libraries(LLVMFM PRIVATE
#     ${ILOCPLEX_LIBRARY}
#     ${CPLEX_LIBRARY}
#     ${CONCERT_LIBRARY}
#     m pthread dl ncurses
# )

if(APPLE)
    target_link_options(LLVMFM PRIVATE -Wl,-undefined,dynamic_lookup)
endif()
