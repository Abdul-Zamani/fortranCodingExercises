      

      ! A.Zamani 1/16/19
      program ex5     !This program displays the prime numbers between
                      !two integers
      implicit none
      integer i, j, n, m
      logical prime
      write(*,*) 'please enter a number: '
      read *, n
      write(*,*) 'please enter another number: '
      read*, m
      if (m .ge. n) then
        if (n==0 .or. n==1) then !
          n = 2    !
        endif          !
       ! if (n==1) then !Doesnt work if we set i=n,m,2 down below
       !   n = n + 1    !Only 0,1,2 work for n
       ! endif
        if (mod(n,2) == 0) then
          n = n + 1          !maybe make it do interval 2 for odd n's
         do i = n, m, 2     !fixed
        prime = .true.
          do j = n, int(sqrt(dble(i)))
            if (mod(i,j) == 0) then
              prime = .false.
              exit
            end if
           end do
          if (prime) write (*,*), i
         end do
        elseif (mod(n,2) .ne. 0) then         
          do i = n, m, 2 !for odds, skip 2   
        prime = .true.
          do j = n, int(sqrt(dble(i)))
            if (mod(i,j) == 0) then
              prime = .false.
              exit
            end if
          end do
          if (prime) write (*,*)'The following are prime numbers ', i
          end do
        endif
      else
        if (m==0) then
          m = m + 1
        endif
        if (m==1) then
          m=m+2
        endif
        if (mod(m,2) == 0) then
          do i = m, n !only works for odd n
          prime = .true.
          do j = m, int(sqrt(dble(i)))
            if (mod(i,j) == 0) then
            prime = .false.
            exit
            end if
          enddo
          enddo
        endif
        if (mod(m,2) .ne. 0) then
          do i = m, n, 2 !for odds, skip 2
        prime = .true.
          do j = m, int(sqrt(dble(i)))
            if (mod(i,j) == 0) then
              prime = .false.
              exit
            end if
          end do
         if (prime) write(*,*)'The following are prime numbers: ', i
         end do
        endif
      endif
      end program ex5

