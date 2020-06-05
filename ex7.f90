     

      program ex7
      implicit none
      integer n, m, i, j, k
        call prime(n, m, i, j)
        call powers(n, m, i, j, k)
      end program ex7  

      subroutine prime(n, m, i, j)
      !implicit none
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
      end subroutine prime


      subroutine powers(n, m, i, j, k)
      !implicit none
      integer n, m, i, j, k

      write(*,*)'Enter a number '
      read(*,*), n
      write(*,*)'Enter another number '
      read(*,*), m
     !
      if (m.ge.n) then
        print('(3a12)'), 'number', 'square', 'cube'
        do i=n, m
           j=i**2
           k=i**3
     ! write(*,*)' number ', ' square ', ' cube '
     ! write(*,*)' ', i,' ', j,' ', k
       write(*,*), i, j, k
        enddo
      endif

      if (n.ge.m) then
        print('(3a12)'), 'number', 'square', 'cube'
        do i=m, n
           j=i**2
           k=i**3
     ! write(*,*)'number ', 'square ', 'cube '
     ! write(*,*)' ', i,' ', j,' ', k
        enddo
      endif
      end subroutine powers
!
!
