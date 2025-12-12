program test_mem

   ! gfortran teste_mem.f90 -o teste_mem.x

   implicit none

   integer(kind=8)                  :: n, nmax, status
   real, allocatable, dimension(:)  :: v

   print *, "Testando tamanho maximo de vetor REAL contiguo..."

   n = 1_8
   nmax = 0_8

   ! Cresce exponencialmente ate falhar
   do

      allocate(v(n), stat=status)
      if (status /= 0) then
         exit    ! Falhou, para o loop
      else
         print*, n, 'elementos... ok.'
         deallocate(v)
         nmax = n
         n = n * 2_8
      end if
   end do

   print *, "Maior vetor alocado com sucesso = ", nmax, " elementos"

   print *, "Memoria aproximada usada = ", 4.0d0 * real(nmax,8) / 1.0d9, " GB"
   print *, " (Assumindo REAL de 4 bytes)"
   
end program test_mem
