
      program ex6
      implicit none
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
        write(*,*), i, j, k
        enddo
      endif

      end program ex6
