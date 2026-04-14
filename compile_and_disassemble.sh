#!/bin/bash
#
# Compiles and dissassembles files for different:
#  - architectures
#  - optimization levels
#

# Sources
sources=src/*.cpp

# Architecture options
archs_array=( "" "x86-64" "haswell" "skylake" "native" )
len_archs_array=${#archs_array[*]}

# Optimization level options
opt_levels_array=( "-O0" "-O1" "-O2" "-O3" "-Ofast" )
len_opt_levels_array=${#opt_levels_array[*]}

for src in $sources; do

    BASENAME=$(basename $src .cpp)

    for ((a = 0; a < len_archs_array; ++a)) do
        for ((o = 0; o < len_opt_levels_array; ++o)) do

            ARCH=${archs_array[a]}
            OPT=${opt_levels_array[o]}

            if ((${#ARCH} > 0)) then
                ARCH_PARAM="-march=${ARCH}"
            else
                ARCH="default"
                ARCH_PARAM=""
            fi

            mkdir -p ${ARCH}
            OUT_PREFIX="${ARCH}/${BASENAME}_${ARCH}${OPT}"

            echo "Compiling $src...arch=${ARCH} opt=${OPT}"

            g++ $src -c ${ARCH_PARAM} ${OPT} -o ${OUT_PREFIX}.o
            objdump -M intel --disassemble --demangle ${OUT_PREFIX}.o > ${OUT_PREFIX}.s
        done
    done
done
