
      Program ex4
      implicit none
!
!This program computes the product of the range of integers between two
!numbers selected by the users.
!
      integer::a, b, c, i, factorial
!
      write(*,*)'Enter a number '
      read(*,*)a
      write(*,*)'Enter another number'
      read(*,*)b
!
      
      factorial=1
      if (b.ge.a) then
      DO i=a, b
        factorial = factorial * i
      enddo
      else
      do i=a,b,-1 
        factorial =factorial *i
      enddo
      endif
      write(*,*)'The answer is, ', factorial
      EndProgram ex4
!

