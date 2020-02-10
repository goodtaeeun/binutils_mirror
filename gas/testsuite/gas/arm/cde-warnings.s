.syntax unified
# cx1{a}
# Immediate out of range.
# Each register out of range.
# r13 => constrained unpredictable
# itblock => constrained unpredictable
# Error given when using coprocessor number not enabled on command line.
# Too many arguments
# Too little arguments
# r15 instead of APSR_nzcv

cx1 p0, r0, #8192
cx1a p0, r0, #8192
cx1 p0, r0, #-1
cx1a p0, r0, #-1

cx1 p8, r0, #0
cx1a p8, r0, #0

cx1 p0, r16, #0
cx1a p0, r16, #0

cx1 p0, r13, #0
cx1a p0, r13, #0

ittt ne
cx1 p0, r0, #0
cx1ne p0, r0, #0
cx1ane p0, r0, #0

cx1 p1, r0, #0
cx1a p1, r0, #0

cx1 p0, r0, r0, #0
cx1a p0, r0, r0, #0

cx1 p0, #0
cx1a p0, #0

cx1 p0, r15, #0
cx1a p0, r15, #0

# cx1d{a}
# Immediate out of range.
# Each register out of range.
# APSR_nzcv disallowed as destination register.
# rd<odd> => constrained unpredictable
# r< N > 10 > => constrained unpredictable
# IT block => constrained unpredictable
#
# Error given when using coprocessor number not enabled on command line.
# Disallow non-incrementing values in destination.
# Too many arguments
# Too little arguments

cx1d p0, r0, r1, #8192
cx1da p0, r0, r1, #8192
cx1d p0, r0, r1, #-1
cx1da p0, r0, r1, #-1

cx1d p8, r0, r1, #0
cx1da p8, r0, r1, #0

cx1d p0, r16, r17, #0
cx1da p0, r16, r17, #0

cx1d p0, APSR_nzcv, r15, #0
cx1da p0, APSR_nzcv, r15, #0

cx1d p0, r9, r10, #0
cx1da p0, r9, r10, #0

cx1d p0, r13, r14, #0
cx1da p0, r13, r14, #0

ittt ne
cx1d p0, r0, r1, #0
cx1dne p0, r0, r1, #0
cx1dane p0, r0, r1, #0

cx1d p1, r0, r1, #0
cx1da p1, r0, r1, #0

cx1d p0, r0, r2, #0
cx1da p0, r0, r2, #0

cx1d p0, r0, r1, r0, #0
cx1da p0, r0, r1, r0, #0

cx1d p0, r0, #0
cx1da p0, r0, #0

# cx2{a}
# Immediate out of range.
# Each register out of range.
# rd13 => constrained unpredictable
# rn13 => constrained unpredictable
# IT block => constrained unpredictable
#
# Error given when using coprocessor number not enabled on command line.
# Too many arguments
# Too little arguments.
# r15 instead of APSR_nzcv

cx2 p0, r0, r0, #512
cx2a p0, r0, r0, #512
cx2 p0, r0, r0, #-1
cx2a p0, r0, r0, #-1

cx2 p8, r0, r0, #0
cx2a p8, r0, r0, #0

cx2 p0, r16, r0, #0
cx2a p0, r16, r0, #0

cx2 p0, r0, r16, #0
cx2a p0, r0, r16, #0

cx2 p0, r13, r0, #0
cx2a p0, r13, r0, #0

cx2 p0, r0, r13, #0
cx2a p0, r0, r13, #0

ittt ne
cx2 p0, r0, r0, #0
cx2ne p0, r0, r0, #0
cx2ane p0, r0, r0, #0

cx2 p1, r0, r0, #0
cx2a p1, r0, r0, #0

cx2 p0, r0, r0, r0, #0
cx2a p0, r0, r0, r0, #0

cx2 p0, r0, #0
cx2a p0, r0, #0

cx2 p0, r0, r15, #0
cx2a p0, r0, r15, #0

cx2 p0, r15, r0, #0
cx2a p0, r15, r0, #0

# cx2d{a}
# Immediate out of range.
# Each register out of range.
# APSR_nzcv disallowed as destination register.
# rd<odd> => constrained unpredictable
# rd< N > 10 > => constrained unpredictable
# rn13 => constrained unpredictable
# IT block => constrained unpredictable
#
# Error given when using coprocessor number not enabled on command line.
# Disallow non-incrementing values in destination.
# Too many arguments
# Too little arguments
cx2d p0, r0, r1, r0, #512
cx2da p0, r0, r1, r0, #512
cx2d p0, r0, r1, r0, #-1
cx2da p0, r0, r1, r0, #-1

cx2d p8, r0, r1, r0, #0
cx2da p8, r0, r1, r0, #0

cx2d p0, r16, r17, r0, #0
cx2da p0, r16, r17, r0, #0

cx2d p0, r0, r1, r16, #0
cx2da p0, r0, r1, r16, #0

cx2d p0, APSR_nzcv, r15, r0, #0
cx2da p0, APSR_nzcv, r15, r0, #0

cx2d p0, r9, r10, r0, #0
cx2da p0, r9, r10, r0, #0

cx2d p0, r12, r13, r0, #0
cx2da p0, r12, r13, r0, #0

cx2d p0, r0, r1, r13, #0
cx2da p0, r0, r1, r13, #0

cx2d p0, r0, r1, r15, #0
cx2da p0, r0, r1, r15, #0

ittt ne
cx2d p0, r0, r1, r0, #0
cx2dne p0, r0, r1, r0, #0
cx2dane p0, r0, r1, r0, #0

cx2d p1, r0, r1, r0, #0
cx2da p1, r0, r1, r0, #0

cx2d p0, r0, r2, r0, #0
cx2da p0, r0, r2, r0, #0

cx2d p0, r0, r1, r0, r0, #0
cx2da p0, r0, r1, r0, r0, #0

cx2d p0, r0, r0, #0
cx2da p0, r0, r0, #0

# cx2{a}
# Immediate out of range.
# Each register out of range.
# rd13 => constrained unpredictable
# rn13 => constrained unpredictable
# rm13 => constrained unpredictable
# IT block => constrained unpredictable
#
# Error given when using coprocessor number not enabled on command line.
# Too many arguments
# Too little arguments.
# r15 instead of APSR_nzcv

cx3 p0, r0, r0, r0, #64
cx3a p0, r0, r0, r0, #64
cx3 p0, r0, r0, r0, #-1
cx3a p0, r0, r0, r0, #-1

cx3 p8, r0, r0, r0, #0
cx3a p8, r0, r0, r0, #0

cx3 p0, r16, r0, r0, #0
cx3a p0, r16, r0, r0, #0

cx3 p0, r0, r16, r0, #0
cx3a p0, r0, r16, r0, #0

cx3 p0, r0, r0, r16, #0
cx3a p0, r0, r0, r16, #0

cx3 p0, r13, r0, r0, #0
cx3a p0, r13, r0, r0, #0

cx3 p0, r0, r13, r0, #0
cx3a p0, r0, r13, r0, #0

cx3 p0, r0, r0, r13, #0
cx3a p0, r0, r0, r13, #0

ittt ne
cx3 p0, r0, r0, r0, #0
cx3ne p0, r0, r0, r0, #0
cx3ane p0, r0, r0, r0, #0

cx3 p1, r0, r0, r0, #0
cx3a p1, r0, r0, r0, #0

cx3 p0, r0, r0, r0, r0, #0
cx3a p0, r0, r0, r0, r0, #0

cx3 p0, r0, r0, #0
cx3a p0, r0, r0, #0

cx3 p0, r15, r0, r0, #0
cx3a p0, r15, r0, r0, #0

cx3 p0, r0, r15, r0, #0
cx3a p0, r0, r15, r0, #0

cx3 p0, r0, r0, r15, #0
cx3a p0, r0, r0, r15, #0

# cx3d{a}
# Immediate out of range.
# Each register out of range.
# APSR_nzcv disallowed as destination register.
# rd<odd> => constrained unpredictable
# rd< N > 10 > => constrained unpredictable
# rn13 => constrained unpredictable
# rm13 => constrained unpredictable
# rn15 disallowed (pattern matches APSR_nzcv)
# rm15 disallowed (pattern matches APSR_nzcv)
# IT block => constrained unpredictable
#
# Error given when using coprocessor number not enabled on command line.
# Disallow non-incrementing values in destination.
# Too many arguments
# Too little arguments
cx3d p0, r0, r1, r0, r0, #64
cx3da p0, r0, r1, r0, r0, #64
cx3d p0, r0, r1, r0, r0, #-1
cx3da p0, r0, r1, r0, r0, #-1

cx3d p8, r0, r1, r0, r0, #0
cx3da p8, r0, r1, r0, r0, #0

cx3d p0, r16, r17, r0, r0, #0
cx3da p0, r16, r17, r0, r0, #0

cx3d p0, r0, r1, r16, r0, #0
cx3da p0, r0, r1, r16, r0, #0

cx3d p0, r0, r1, r0, r16, #0
cx3da p0, r0, r1, r0, r16, #0

cx3d p0, APSR_nzcv, r15, r0, r0, #0
cx3da p0, APSR_nzcv, r15, r0, r0, #0

cx3d p0, r9, r10, r0, r0, #0
cx3da p0, r9, r10, r0, r0, #0

cx3d p0, r12, r13, r0, r0, #0
cx3da p0, r12, r13, r0, r0, #0

cx3d p0, r0, r1, r13, r0, #0
cx3da p0, r0, r1, r13, r0, #0

cx3d p0, r0, r1, r0, r13, #0
cx3da p0, r0, r1, r0, r13, #0

cx3d p0, r0, r1, r15, r0, #0
cx3da p0, r0, r1, r15, r0, #0

cx3d p0, r0, r1, r0, r15, #0
cx3da p0, r0, r1, r0, r15, #0

ittt ne
cx3d p0, r0, r1, r0, r0, #0
cx3dne p0, r0, r1, r0, r0, #0
cx3dane p0, r0, r1, r0, r0, #0

cx3d p1, r0, r1, r0, r0, #0
cx3da p1, r0, r1, r0, r0, #0

cx3d p0, r0, r2, r0, r0, #0
cx3da p0, r0, r2, r0, r0, #0

cx3d p0, r0, r1, r0, r0, r0, #0
cx3da p0, r0, r1, r0, r0, r0, #0

cx3d p0, r0, r0, r0, #0
cx3da p0, r0, r0, r0, #0
