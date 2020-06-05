      program testprime
      implicit none
! This program takes two input values and finds the prime numbers
! between them. The key is in the modulus and divisor tests.
! AZamani
      integer::n, m, i, j
      write(*,*)'enter a # '
      read*, n
      write(*,*)'enter another # '
      read*, m
      if (m.ge.n) then
        if(n==0 .or. n==1) then
        n=2
        endif !go straight to two
        do i=n, m
          j=2
          do
            if (j*j > i .or. mod(i,j) == 0) EXIT !j*j >1 see below
            j=j+1
          enddo
        if (j*j > i) then
          write(*,*)'prime # ', i
        endif
        enddo
       endif
       if (n.ge.m) then
         if(m==0 .or. m==1) then
           m=2
         endif !go straight to two
         do i=m, n
           j=2
           do
             if (j*j > i .or. mod(i,j) == 0) EXIT !j*j >1 see below
             j=j+1
           enddo
         if (j*j > i) then
           write(*,*)'prime # ', i
         endif
         enddo
       endif
!
      write(*,*)
      write(*,*)'The above is a list of prime numbers in the range of&
          & the selected integers.'
      end program testprime
!
! If Divisor*Divisor > Number holds, then all odd numbers that are
! greater than or equal to 3 and less than or equal to the square root
! of Number have been tried and none of them can evenly divide Number.
! Therefore, Number is a prime number.
!

