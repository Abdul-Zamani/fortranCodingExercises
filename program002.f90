      Program program002
      implicit none
      integer::i,ival=5,ifactorial
!
      ifactorial = 1
      do i = ival,1,-1
        ifactorial = ifactorial*i
      endDo
!
      write(*,*)' The factorial of ',ival, ' is ', ifactorial,'.'
!
      end program program002
