
      program ex10
      implicit none
      real a, b, c, x, y, z, distvec
      real distance
      real, dimension(3) :: vec1, vec2, vec
      !You must define the input variables prior to defining the arrays
      write(*,*)'Enter element "a" for vector #1: '
      read*,a
      write(*,*)'Enter element "b" for vector #1: '
      read*,b
      write(*,*)'Enter element "c" for vector #1: '
      read*,c
      write(*,*)'Enter element "x" for vector #2: '
      read*,x
      write(*,*)'Enter element "y" for vector #2: '
      read*,y
      write(*,*)'Enter element "z" for vector #2: '
      read*,z
      vec1=(/ a,b,c/)
      vec2=(/x,y,z/) 
      !
      !You must define the arrays in terms of the fxns
      !
      distvec = distance(vec1,vec2,vec)
      !distvec2 = distance(vec2) 
      write(*,*)
      write(*,*)'Distance between vectors #1 and #2: ', distvec
      write(*,*)
      !
      !  
      call sumvec(vec1,vec2)
      end program ex10
      !  
      !Define function in terms of a generalized array
      function distance(vec1,vec2,vec)
        real dist
        real, dimension(3) :: vec, vec1, vec2
        dist = sqrt(((vec1(1)-vec2(1))**2)+((vec1(2)-vec2(2))**2) &
        +((vec1(3)-vec2(3))**2))
        return
      end function distance
      !Subroutine should be defined in terms of another expression
      subroutine sumvec(vec1,vec2)
        integer i
        real, dimension(3) :: sumvc, vec1, vec2
        do i = 1,3
           sumvc(i) =vec1(i) + vec2(i)
        enddo
        write(*,*)'The sum of vector #1 and vector #2 is: '
        write(*,*)
        write(*,*) sumvc
      end subroutine sumvec
    
