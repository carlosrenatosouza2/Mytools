program cycle
   use iso_fortran_env
   implicit none
   
   integer, parameter :: verylong = selected_int_kind(32)
   integer(verylong) :: x1, result, x2, x3

   print *, "int32 = ", int32	!! from iso_fortran_env
   print *, "int64 = ", int64
   print *
   print *, "kind..(16) => ", selected_int_kind(16)  !! 8
   print *, "kind..(32) => ", selected_int_kind(32)  !! 16
   print *, "kind..(40) => ", selected_int_kind(40)  !! -1 (not available)
   print *, "kind..(64) => ", selected_int_kind(64)  !! -1 (not available)
   print *
   print *, "sizeof(x1)       = ", sizeof(x1), "(bytes)"       !! GNU extension
   print *, "storage_size(x1) = ", storage_size(x1), "(bits)"  !! F2008
   print *, "huge(x1)	      = ", huge(x1)		       !! largest integer

end program
