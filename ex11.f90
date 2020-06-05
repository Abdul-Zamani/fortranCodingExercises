
      program ex11
      implicit none
      real a, b, c, x, y, z
      !real :: sumvec
      real, external     :: sumvec
      real, dimension(3) :: vec1, vec2, sumvecc
      real, dimension(3) :: sumvc
      !You must define the input variables prior to defining the arrays
      
      write(*,*)'Enter the elements for vector #1: '
      read*,a,b,c
      write(*,*)'Enter the elements for vector #2: '
      read*,x,y,z
      vec1=(/ a,b,c/)
      vec2=(/x,y,z/) 
      !
      !You must define the arrays in terms of the fxns
      !  
      sumvecc=sumvec(vec1,vec2,sumvc)
      write(*,*)'The sum of both vectors is: ', sumvc
      end program ex11
      !  
      !Subroutine should be defined in terms of another expression
       function sumvec(vec1,vec2,sumvc) 
        integer i
        real, dimension(3), intent(in) :: vec1
        real, dimension(3), intent(in) :: vec2
        real, dimension(3)             :: sumvc
        do i =1,3
        sumvc(i) = vec1(i) + vec2(i)
        enddo
        return
      end function
    
