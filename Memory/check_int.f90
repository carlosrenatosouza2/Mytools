program check_int_kinds
    use iso_fortran_env

    print *, "Default integer kind: ", kind(1)
    print *, "int8  kind: ", int8,  " size:", bit_size(1_int8)
    print *, "int16 kind: ", int16, " size:", bit_size(1_int16)
    print *, "int32 kind: ", int32, " size:", bit_size(1_int32)
    print *, "int64 kind: ", int64, " size:", bit_size(1_int64)
end program check_int_kinds
